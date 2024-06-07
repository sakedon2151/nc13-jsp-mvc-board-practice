package controller;
import connector.MySqlConnector;
import model.BoardDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardController {
    private Connection connection;

    // common - SQL connector
    public BoardController(MySqlConnector connector) {
        connection = connector.makeConnection();
    }

    // select all
    public ArrayList<BoardDTO> selectAll() {
        ArrayList<BoardDTO> list = new ArrayList<>();
        String query = "SELECT * FROM board INNER JOIN user ON board.writer_id = user.id";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                BoardDTO boardDTO = new BoardDTO();
                boardDTO.setId(resultSet.getInt("id"));
                boardDTO.setTitle(resultSet.getString("title"));
                boardDTO.setContent(resultSet.getString("content"));
                boardDTO.setEntryDate(resultSet.getTimestamp("entry_date"));
                boardDTO.setModifyDate(resultSet.getTimestamp("modify_date"));
                boardDTO.setWriterId(resultSet.getInt("writer_id"));
                boardDTO.setNickname(resultSet.getString("nickname"));
                list.add(boardDTO);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // select one
    public BoardDTO selectOne(int id) {
        String query = "SELECT * FROM board INNER JOIN user ON board.writer_id = user.id WHERE board.id = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                BoardDTO boardDTO = new BoardDTO();
                boardDTO.setId(resultSet.getInt("board.id"));
                boardDTO.setTitle(resultSet.getString("title"));
                boardDTO.setContent(resultSet.getString("content"));
                boardDTO.setEntryDate(resultSet.getTimestamp("entry_date"));
                boardDTO.setModifyDate(resultSet.getTimestamp("modify_date"));
                boardDTO.setWriterId(resultSet.getInt("writer_id"));
                boardDTO.setNickname(resultSet.getString("nickname"));
                return boardDTO;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // post write
    public void write(BoardDTO attempt) {
        String query = "INSERT INTO board (title, content, entry_date, modify_date) VALUE";
    }


    // post update
    public void update(BoardDTO attempt) {
        String query = "UPDATE board SET title = ?, content = ?, modify_date = NOW() WHERE id = ? AND writer_id = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, attempt.getTitle());
            preparedStatement.setString(2, attempt.getContent());
            preparedStatement.setInt(3, attempt.getId());
            preparedStatement.setInt(4, attempt.getWriterId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // post delete
    public void delete(int id) {
        String query = "DELETE FROM board WHERE id = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



}

package model;

import lombok.Data;

@Data
public class BoardDTO {
    private int id;
    private String title;
    private String content;


    private int writer_id;
}

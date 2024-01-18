package com.hrm.board;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int num;
    private int userid;
    private String title;
    private String content;
    private Date regdate;
    private int readcount;
    // ... 다른 필드와 메서드들
    // Getter와 Setter 메서드들
}
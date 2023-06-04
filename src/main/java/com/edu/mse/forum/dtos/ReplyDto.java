package com.edu.mse.forum.dtos;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class ReplyDto {

    private long topicId;

    private long userId;

    private String text;

    private Long id;

}

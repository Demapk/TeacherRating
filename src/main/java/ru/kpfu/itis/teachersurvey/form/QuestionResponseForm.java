package ru.kpfu.itis.teachersurvey.form;

import lombok.Data;

import java.io.Serializable;

@Data
public class QuestionResponseForm implements Serializable {

    private String answer;
    private Long questionId;
}

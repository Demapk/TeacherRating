package ru.kpfu.itis.teachersurvey.form;

import lombok.Data;

import java.io.Serializable;

@Data
public class QuestionResponseForm implements Serializable {

    private String answer;
    private Long questionId;

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Long getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Long questionId) {
        this.questionId = questionId;
    }
}

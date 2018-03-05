package ru.kpfu.itis.teachersurvey.form;

import lombok.Data;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

@Data
@ToString(exclude = "questionResponses")
public class SurveyPageWrapper {

    private List<QuestionResponseForm> questionResponses = new ArrayList<>();

    public List<QuestionResponseForm> getQuestionResponses() {
        return questionResponses;
    }

    public void setQuestionResponses(List<QuestionResponseForm> questionResponses) {
        this.questionResponses = questionResponses;
    }
}

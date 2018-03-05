package ru.kpfu.itis.teachersurvey.form;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import ru.kpfu.itis.teachersurvey.model.QuestionResponse;

import java.util.ArrayList;
import java.util.List;

@Data
@ToString(exclude = "questionResponses")
@EqualsAndHashCode(of = "id")
public class SurveyResponseForm {

    private Long id;
    private Long surveyId;
    private Long groupId;
    private List<QuestionResponse> questionResponses = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSurveyId() {
        return surveyId;
    }

    public void setSurveyId(Long surveyId) {
        this.surveyId = surveyId;
    }

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    public List<QuestionResponse> getQuestionResponses() {
        return questionResponses;
    }

    public void setQuestionResponses(List<QuestionResponse> questionResponses) {
        this.questionResponses = questionResponses;
    }
}

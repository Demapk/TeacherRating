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
}

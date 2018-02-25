package ru.kpfu.itis.teachersurvey.form;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.List;

@Data
@ToString(exclude = {"disciplines", "questions"})
public class SurveyForm {

    private Long id;
    @NotEmpty
    private String title;
    private String description;
    private Long courseId;
    private List<Long> disciplines;
    private List<Long> questions;
}

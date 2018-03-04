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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

    public List<Long> getDisciplines() {
        return disciplines;
    }

    public void setDisciplines(List<Long> disciplines) {
        this.disciplines = disciplines;
    }

    public List<Long> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Long> questions) {
        this.questions = questions;
    }
}

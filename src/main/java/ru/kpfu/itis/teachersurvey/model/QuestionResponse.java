package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
public class QuestionResponse implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "question_response_id_seq")
    @SequenceGenerator(name = "question_response_id_seq", sequenceName = "question_response_id_seq", allocationSize = 1)
    private Long id;

    @ManyToOne
    @JsonManagedReference
    private Survey survey;

    @ManyToOne
    @JsonManagedReference
    private Group group;

    @ManyToOne
    @JsonManagedReference
    private Discipline discipline;

    @ManyToOne
    @JsonManagedReference
    private Teacher teacher;

    @ManyToOne
    @JsonManagedReference
    private Question question;

    private String answer;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Survey getSurvey() {
        return survey;
    }

    public void setSurvey(Survey survey) {
        this.survey = survey;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public Discipline getDiscipline() {
        return discipline;
    }

    public void setDiscipline(Discipline discipline) {
        this.discipline = discipline;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
}

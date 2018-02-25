package ru.kpfu.itis.teachersurvey.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
public class QuestionResponse implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @ManyToOne
    private Survey survey;

    @ManyToOne
    private Group group;

    @ManyToOne
    private Discipline discipline;

    @ManyToOne
    private Teacher teacher;

    @ManyToOne
    private Question question;

    private String answer;

}

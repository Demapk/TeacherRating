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

}

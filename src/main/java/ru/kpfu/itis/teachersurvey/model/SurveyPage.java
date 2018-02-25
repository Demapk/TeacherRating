package ru.kpfu.itis.teachersurvey.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
public class SurveyPage implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    private String title;

    private Long pos;

    @ManyToOne
    private Discipline discipline;

    @ManyToOne
    private Survey survey;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "survey_page_question",
            joinColumns = @JoinColumn(name = "survey_page_id"),
            inverseJoinColumns = @JoinColumn(name = "question_id"))
    private List<Question> questions = new ArrayList<>();

}

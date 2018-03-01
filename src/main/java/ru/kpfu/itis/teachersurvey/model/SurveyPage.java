package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
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
    @JsonManagedReference
    private Discipline discipline;

    @ManyToOne
    @JsonManagedReference
    private Survey survey;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "survey_page_question",
            joinColumns = @JoinColumn(name = "survey_page_id"),
            inverseJoinColumns = @JoinColumn(name = "question_id"))
    @JsonBackReference
    private List<Question> questions = new ArrayList<>();

}

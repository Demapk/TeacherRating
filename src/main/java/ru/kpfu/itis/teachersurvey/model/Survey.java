package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(of = "id")
@ToString(exclude = {"questionResponses", "surveyPages"})
public class Survey implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "survey_id_seq")
    @SequenceGenerator(name = "survey_id_seq", sequenceName = "survey_id_seq", allocationSize = 1)
    private Long id;

    private String title;

    private String description;

    private boolean active;

    @ManyToOne
    @JsonManagedReference
    private Course course;

    @OneToMany(mappedBy = "survey", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<QuestionResponse> questionResponses = new ArrayList<>();

    @OneToMany(mappedBy = "survey", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<SurveyPage> surveyPages = new ArrayList<>();

}

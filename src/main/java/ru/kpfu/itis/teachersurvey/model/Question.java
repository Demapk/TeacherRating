package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.Cascade;
import org.hibernate.validator.constraints.NotEmpty;
import ru.kpfu.itis.teachersurvey.model.enumeration.QuestionType;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(of = "id")
public class Question implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @NotEmpty
    private String title;

    @Enumerated(EnumType.STRING)
    @Column(name = "question_type")
    private QuestionType questionType;

    private boolean required;

    @ElementCollection
    @CollectionTable(name = "question_question_option", joinColumns = @JoinColumn(name = "question_id"))
    @Column(name = "question_option")
    @Cascade(value = org.hibernate.annotations.CascadeType.ALL)
    private List<String> questionOptions = new ArrayList<>();

    @OneToMany(mappedBy = "question", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<QuestionResponse> questionResponses = new ArrayList<>();

    @ManyToMany(mappedBy = "questions")
    @JsonBackReference
    private List<SurveyPage> surveyPages = new ArrayList<>();
}

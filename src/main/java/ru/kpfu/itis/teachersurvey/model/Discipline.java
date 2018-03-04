package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;
import lombok.EqualsAndHashCode;
import ru.kpfu.itis.teachersurvey.model.enumeration.DisciplineType;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@Entity
@EqualsAndHashCode(of = "id")
public class Discipline implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "discipline_id_seq")
    @SequenceGenerator(name = "discipline_id_seq", sequenceName = "discipline_id_seq", allocationSize = 1)
    private Long id;
    private String title;

    @ManyToOne
    private Course course;

    @Enumerated(EnumType.STRING)
    private DisciplineType type;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "discipline_teacher",
            joinColumns = @JoinColumn(name = "discipline_id"),
            inverseJoinColumns = @JoinColumn(name = "teacher_id"))
    @JsonManagedReference
    private Set<Teacher> teachers = new HashSet<>();

    @OneToMany(mappedBy = "discipline", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<QuestionResponse> questionResponses = new ArrayList<>();

}

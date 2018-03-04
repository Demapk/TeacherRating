package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;
import lombok.EqualsAndHashCode;
import ru.kpfu.itis.teachersurvey.model.enumeration.CourseYear;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(of = "id")
public class Course implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "course_id_seq")
    @SequenceGenerator(name = "course_id_seq", sequenceName = "course_id_seq", allocationSize = 1)
    private Long id;

    private String title;

    @Column(name = "course_year", nullable = false, unique = true)
    @Enumerated(EnumType.STRING)
    private CourseYear courseYear;

    @OneToMany(mappedBy = "course", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<Survey> surveys = new ArrayList<>();

    @OneToMany(mappedBy = "course", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<Group> groups = new ArrayList<>();

    @OneToMany(mappedBy = "course", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<Discipline> disciplines = new ArrayList<>();
}

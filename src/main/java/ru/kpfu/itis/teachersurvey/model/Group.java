package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Table(name = "student_group")
@EqualsAndHashCode(of = "id")
public class Group implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "student_group_id_seq")
    @SequenceGenerator(name = "student_group_id_seq", sequenceName = "student_group_id_seq", allocationSize = 1)
    private Long id;

    private String title;

    @ManyToOne
    @JsonManagedReference
    private Course course;

    @OneToMany(mappedBy = "group", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<QuestionResponse> questionResponses = new ArrayList<>();
}

package ru.kpfu.itis.teachersurvey.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@Entity
@EqualsAndHashCode(of = "id")
public class Teacher implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "teacher_id_seq")
    @SequenceGenerator(name = "teacher_id_seq", sequenceName = "teacher_id_seq", allocationSize = 1)
    private Long id;

    @NotEmpty
    @Column(name = "first_name")
    private String firstName;

    @NotEmpty
    @Column(name = "last_name")
    private String lastName;

    @Column(name = "middle_name")
    private String middleName;

    @ManyToMany(mappedBy = "teachers")
    @JsonBackReference
    private Set<Discipline> courses = new HashSet<>();

    @OneToMany(mappedBy = "teacher", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonBackReference
    private List<QuestionResponse> questionResponses = new ArrayList<>();

    public String getFullName() {
        return lastName + " " + firstName + " " + middleName;
    }

    public String getInitials() {
        StringBuilder stringBuilder = new StringBuilder(lastName);
        if (firstName != null && firstName.length() > 0) {
            stringBuilder.append(" ").append(firstName.charAt(0)).append(".");
        }
        if (middleName != null && middleName.length() > 0) {
            stringBuilder.append(" ").append(middleName.charAt(0)).append(".");
        }
        return stringBuilder.toString();
    }

}

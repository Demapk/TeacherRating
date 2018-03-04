package ru.kpfu.itis.teachersurvey.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "user_account")
@EqualsAndHashCode(of = "id")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id_seq")
    @SequenceGenerator(name = "user_id_seq", sequenceName = "user_id_seq", allocationSize = 1)
    private Long id;
    private String username;
    private String password;
    private String role;
}
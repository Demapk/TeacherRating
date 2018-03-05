package ru.kpfu.itis.teachersurvey.form;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotEmpty;
import ru.kpfu.itis.teachersurvey.model.enumeration.DisciplineType;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Data
@ToString(exclude = "teachers")
public class DisciplineForm implements Serializable {

    private Long id;
    @NotEmpty
    private String title;
    private Long courseId;
    private Map<DisciplineType, Set<Long>> teachers = new HashMap<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

    public Map<DisciplineType, Set<Long>> getTeachers() {
        return teachers;
    }

    public void setTeachers(Map<DisciplineType, Set<Long>> teachers) {
        this.teachers = teachers;
    }
}

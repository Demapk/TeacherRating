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
}

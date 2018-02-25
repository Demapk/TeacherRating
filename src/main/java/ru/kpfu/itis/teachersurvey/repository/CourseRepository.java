package ru.kpfu.itis.teachersurvey.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.kpfu.itis.teachersurvey.model.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
}

package ru.kpfu.itis.teachersurvey.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.kpfu.itis.teachersurvey.model.Question;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {
}

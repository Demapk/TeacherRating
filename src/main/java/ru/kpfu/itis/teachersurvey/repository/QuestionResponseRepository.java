package ru.kpfu.itis.teachersurvey.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ru.kpfu.itis.teachersurvey.model.QuestionResponse;

import java.util.List;

@Repository
public interface QuestionResponseRepository extends JpaRepository<QuestionResponse, Long> {

    @Query("select qr from QuestionResponse qr where (:surveyId is null or qr.survey.id = :surveyId) and " +
            "(:teacherId is null or qr.teacher.id = :teacherId) and " +
            "(:disciplineId is null or qr.discipline.id = :disciplineId) and " +
            "(:groupId is null or qr.group.id = :groupId)")
    List<QuestionResponse> findResponses(@Param("surveyId") Long surveyId,
                                         @Param("teacherId") Long teacherId,
                                         @Param("disciplineId") Long disciplineId,
                                         @Param("groupId") Long groupId);

}

package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.model.QuestionResponse;

import java.util.List;

public interface QuestionResponseService {

    QuestionResponse save(QuestionResponse questionResponse);

    List<QuestionResponse> save(Iterable<QuestionResponse> questionResponses);

    QuestionResponse findOne(Long id);

    List<QuestionResponse> findAll();

    void delete(Long id);

    List<QuestionResponse> findByParam(Long surveyId, Long teacherId, Long disciplineId, Long groupId);
}

package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.model.SurveyPage;

import java.util.List;

public interface SurveyPageService {

    SurveyPage save(SurveyPage surveyPage);

    SurveyPage findOne(Long id);

    List<SurveyPage> findAll();

    void delete(Long id);
}

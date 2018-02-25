package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.form.SurveyForm;
import ru.kpfu.itis.teachersurvey.model.Survey;

import java.util.List;

public interface SurveyService {

    Survey save(Survey survey);

    Survey findOne(Long id);

    List<Survey> findAll();

    void delete(Long id);

    Survey createSurvey(SurveyForm surveyForm);
}

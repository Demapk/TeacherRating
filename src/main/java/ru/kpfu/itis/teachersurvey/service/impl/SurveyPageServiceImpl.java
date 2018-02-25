package ru.kpfu.itis.teachersurvey.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.teachersurvey.model.SurveyPage;
import ru.kpfu.itis.teachersurvey.repository.SurveyPageRepository;
import ru.kpfu.itis.teachersurvey.service.SurveyPageService;

import java.util.List;

@Service
@Transactional
public class SurveyPageServiceImpl implements SurveyPageService {

    @Autowired
    private SurveyPageRepository surveyPageRepository;

    @Override
    public SurveyPage save(SurveyPage surveyPage) {
        return surveyPageRepository.save(surveyPage);
    }

    @Override
    public SurveyPage findOne(Long id) {
        return surveyPageRepository.findOne(id);
    }

    @Override
    public List<SurveyPage> findAll() {
        return surveyPageRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        surveyPageRepository.delete(id);
    }
}

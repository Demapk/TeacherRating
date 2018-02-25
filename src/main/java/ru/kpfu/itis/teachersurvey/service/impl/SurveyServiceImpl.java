package ru.kpfu.itis.teachersurvey.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.teachersurvey.form.SurveyForm;
import ru.kpfu.itis.teachersurvey.model.*;
import ru.kpfu.itis.teachersurvey.repository.CourseRepository;
import ru.kpfu.itis.teachersurvey.repository.DisciplineRepository;
import ru.kpfu.itis.teachersurvey.repository.QuestionRepository;
import ru.kpfu.itis.teachersurvey.repository.SurveyRepository;
import ru.kpfu.itis.teachersurvey.service.SurveyService;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class SurveyServiceImpl implements SurveyService {

    private final Logger log = LoggerFactory.getLogger(SurveyServiceImpl.class);

    @Autowired
    private SurveyRepository surveyRepository;

    @Autowired
    private CourseRepository courseRepository;

    @Autowired
    private DisciplineRepository disciplineRepository;

    @Autowired
    private QuestionRepository questionRepository;

    @Override
    public Survey save(Survey survey) {
        return surveyRepository.save(survey);
    }

    @Override
    public Survey findOne(Long id) {
        return surveyRepository.findOne(id);
    }

    @Override
    public List<Survey> findAll() {
        return surveyRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        surveyRepository.delete(id);
    }

    @Override
    public Survey createSurvey(SurveyForm surveyForm) {
        Survey survey = new Survey();
        survey.setTitle(surveyForm.getTitle());
        survey.setDescription(surveyForm.getDescription());
        Course course = courseRepository.findOne(surveyForm.getCourseId());
        survey.setCourse(course);
        List<SurveyPage> surveyPages = new ArrayList<>();
        List<Long> disciplines = surveyForm.getDisciplines();
        for (int i = 0, disciplinesSize = disciplines.size(); i < disciplinesSize; i++) {
            Long disciplineId = disciplines.get(i);
            SurveyPage surveyPage = new SurveyPage();
            Discipline discipline = disciplineRepository.findOne(disciplineId);
            StringBuilder stringBuilder = new StringBuilder(discipline.getTitle());
            if (discipline.getTeachers().size() == 1) {
                stringBuilder.append(" (").append(discipline.getTeachers().stream().findFirst()
                        .get().getInitials()).append(")");
            }
            stringBuilder.append(" - ").append(discipline.getType().getTitle());
            List<Question> questions = surveyForm.getQuestions().stream()
                    .map(id -> questionRepository.findOne(id)).collect(Collectors.toList());
            surveyPage.setQuestions(questions);
            surveyPage.setDiscipline(discipline);
            surveyPage.setSurvey(survey);
            surveyPage.setTitle(stringBuilder.toString());
            surveyPage.setPos((long) i);
            surveyPages.add(surveyPage);
        }
        survey.setSurveyPages(surveyPages);
        survey.setActive(true);
        survey = surveyRepository.save(survey);
        return survey;
    }
}

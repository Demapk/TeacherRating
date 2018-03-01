package ru.kpfu.itis.teachersurvey.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.teachersurvey.model.QuestionResponse;
import ru.kpfu.itis.teachersurvey.repository.QuestionResponseRepository;
import ru.kpfu.itis.teachersurvey.service.QuestionResponseService;

import java.util.List;

@Service
@Transactional
public class QuestionResponseServiceImpl implements QuestionResponseService {

    @Autowired
    private QuestionResponseRepository questionResponseRepository;

    @Override
    public QuestionResponse save(QuestionResponse questionResponse) {
        return questionResponseRepository.save(questionResponse);
    }

    @Override
    public List<QuestionResponse> save(Iterable<QuestionResponse> questionResponses) {
        return questionResponseRepository.save(questionResponses);
    }

    @Override
    public QuestionResponse findOne(Long id) {
        return questionResponseRepository.findOne(id);
    }

    @Override
    public List<QuestionResponse> findAll() {
        return questionResponseRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        questionResponseRepository.delete(id);
    }

    @Override
    public List<QuestionResponse> findByParam(Long surveyId, Long teacherId, Long disciplineId, Long groupId) {
        return questionResponseRepository.findResponses(surveyId, teacherId, disciplineId, groupId);
    }
}

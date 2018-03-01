package ru.kpfu.itis.teachersurvey.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.teachersurvey.model.Discipline;
import ru.kpfu.itis.teachersurvey.model.QuestionResponse;
import ru.kpfu.itis.teachersurvey.model.Survey;
import ru.kpfu.itis.teachersurvey.model.SurveyPage;
import ru.kpfu.itis.teachersurvey.service.QuestionResponseService;
import ru.kpfu.itis.teachersurvey.service.SurveyService;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1")
public class OverviewController {

    @Autowired
    private QuestionResponseService questionResponseService;

    @Autowired
    private SurveyService surveyService;

    @RequestMapping(value = "/responses", method = RequestMethod.GET)
    public List<QuestionResponse> retrieveResponses(
            @RequestParam(value = "surveyId", required = false) Long surveyId,
            @RequestParam(value = "teacherId", required = false) Long teacherId,
            @RequestParam(value = "disciplineId", required = false) Long disciplineId,
            @RequestParam(value = "groupId", required = false) Long groupId) {
        return questionResponseService.findByParam(surveyId, teacherId, disciplineId, groupId);
    }

    @GetMapping("/surveys")
    public List<Survey> getAllSurvey() {
        return surveyService.findAll();
    }

    @GetMapping("/surveys/{id}")
    public Survey getSurvey(@PathVariable("id") Long id) {
        return surveyService.findOne(id);
    }

    @GetMapping("/surveys/{id}/disciplines")
    public List<Discipline> getDisciplines(@PathVariable("id") Long id) {
        return surveyService.findOne(id).getSurveyPages()
                .stream().map(SurveyPage::getDiscipline).collect(Collectors.toList());
    }

}

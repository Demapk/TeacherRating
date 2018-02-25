package ru.kpfu.itis.teachersurvey.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import ru.kpfu.itis.teachersurvey.form.QuestionResponseForm;
import ru.kpfu.itis.teachersurvey.form.SurveyPageWrapper;
import ru.kpfu.itis.teachersurvey.form.SurveyResponseForm;
import ru.kpfu.itis.teachersurvey.model.*;
import ru.kpfu.itis.teachersurvey.service.*;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@Controller
@RequestMapping("/survey")
@SessionAttributes(types = SurveyResponseForm.class)
public class SurveyController {

    @Autowired
    private CourseService courseService;
    @Autowired
    private SurveyService surveyService;
    @Autowired
    private GroupService groupService;
    @Autowired
    private QuestionService questionService;
    @Autowired
    private DisciplineService disciplineService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private QuestionResponseService questionResponseService;

    @GetMapping
    public String chooseCoursePage(Model model) {
        List<Course> courses = courseService.findAll();
        model.addAttribute("courses", courses);
        return "survey/courses";
    }

    @GetMapping("/course/{courseId}")
    public String chooseSurveyPage(@PathVariable("courseId") Long courseId, Model model) {
        List<Survey> surveys = surveyService.findAll().stream()
                .filter(survey -> (survey.getCourse().getId().equals(courseId) && survey.isActive()))
                .collect(Collectors.toList());
        model.addAttribute("surveys", surveys);
        return "survey/surveys";
    }


    @GetMapping("/{surveyId}")
    public String beginSurvey(@PathVariable("surveyId") Long surveyId, Model model) {
        Survey survey = surveyService.findOne(surveyId);
        SurveyResponseForm surveyResponseForm = new SurveyResponseForm();
        surveyResponseForm.setSurveyId(surveyId);
        model.addAttribute("surveyResponseForm", surveyResponseForm);
        Map<Long, String> groups = groupService.findAll().stream().filter(group ->
                group.getCourse().equals(survey.getCourse())).collect(Collectors.toMap(Group::getId, Group::getTitle));
        model.addAttribute("groups", groups);
        model.addAttribute("page", 0);
        model.addAttribute("title", survey.getTitle());
        model.addAttribute("description", survey.getDescription());
        return "survey/survey";
    }

    @PostMapping("/{surveyId}")
    public String nextPage(@PathVariable("surveyId") Long surveyId, @RequestParam("page") int page, Model model,
                           @RequestParam(value = "disciplineId", required = false) Long disciplineId,
                           @RequestParam(value = "teacherId", required = false) Long teacherId,
                           @RequestParam(value = "groupId",required = false) Long groupId,
                           @ModelAttribute("surveyPageWrapper") SurveyPageWrapper questionAnswers,
                           @ModelAttribute(binding = false) SurveyResponseForm surveyResponseForm) {
        if (groupId != null) {
            surveyResponseForm.setGroupId(groupId);
        }

        Survey survey = surveyService.findOne(surveyId);
        if (questionAnswers != null && questionAnswers.getQuestionResponses().size() > 0) {
            for (QuestionResponseForm questionResponseForm : questionAnswers.getQuestionResponses()) {
                QuestionResponse questionResponse = new QuestionResponse();
                questionResponse.setSurvey(survey);
                questionResponse.setGroup(groupService.findOne(surveyResponseForm.getGroupId()));
                questionResponse.setDiscipline(disciplineService.findOne(disciplineId));
                questionResponse.setQuestion(questionService.findOne(questionResponseForm.getQuestionId()));
                questionResponse.setTeacher(teacherService.findOne(teacherId));
                questionResponse.setAnswer(questionResponseForm.getAnswer());
                surveyResponseForm.getQuestionResponses().add(questionResponse);
            }
        }
        log.info(String.valueOf(surveyResponseForm.getQuestionResponses().size()));
        if (survey.getSurveyPages().size() <= page) {
            questionResponseService.save(surveyResponseForm.getQuestionResponses());
            return "redirect:/survey/end";
        }

        SurveyPage surveyPage = survey.getSurveyPages().get(page);
        model.addAttribute("page", page + 1);
        model.addAttribute("title", survey.getTitle());
        model.addAttribute("description", survey.getDescription());
        model.addAttribute("surveyTitle", surveyPage.getTitle());
        model.addAttribute("teachers", surveyPage.getDiscipline().getTeachers().stream()
                .collect(Collectors.toMap(t -> String.valueOf(t.getId()), Teacher::getInitials)));
        model.addAttribute("discipline", surveyPage.getDiscipline());
        model.addAttribute("surveyPageWrapper", new SurveyPageWrapper());
        model.addAttribute("questions", surveyPage.getQuestions());
        return "survey/page";
    }

    @GetMapping("/end")
    public String endSurvey(SessionStatus status) {
        status.setComplete();
        return "index";
    }


}

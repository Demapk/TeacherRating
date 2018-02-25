package ru.kpfu.itis.teachersurvey.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.kpfu.itis.teachersurvey.form.DisciplineForm;
import ru.kpfu.itis.teachersurvey.form.SurveyForm;
import ru.kpfu.itis.teachersurvey.model.*;
import ru.kpfu.itis.teachersurvey.model.enumeration.DisciplineType;
import ru.kpfu.itis.teachersurvey.model.enumeration.QuestionType;
import ru.kpfu.itis.teachersurvey.service.*;

import javax.validation.Valid;
import java.util.*;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/admin")
@SessionAttributes(types = SurveyForm.class)
public class AdminController {

    @Autowired
    private TeacherService teacherService;
    @Autowired
    private DisciplineService disciplineService;
    @Autowired
    private CourseService courseService;
    @Autowired
    private SurveyService surveyService;
    @Autowired
    private QuestionService questionService;

    @GetMapping
    public String adminPage() {
        return "admin/admin";
    }

    //Teacher

    @GetMapping("/teachers")
    public String teachers(Model model) {
        List<Teacher> teachers = teacherService.findAll();
        model.addAttribute("module", "teachers");
        model.addAttribute("teachers", teachers);
        model.addAttribute("teacherForm", new Teacher());
        return "admin/teachers";
    }

    @GetMapping("/teachers/add")
    public String addTeacherPage(Model model) {
        model.addAttribute("module", "teachers");
        model.addAttribute("teacherForm", new Teacher());
        return "admin/teachersAdd";
    }

    @PostMapping("/teachers/add")
    public String addTeacher(@Valid @ModelAttribute("teacherForm") Teacher teacher, BindingResult bindingResult,
                             RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            return "admin/teachersAdd";
        }
        teacherService.save(teacher);
        return "redirect:/admin/teachers";
    }

    @GetMapping("/teachers/update")
    public String updateTeacherPage(@RequestParam("id") Long id, Model model) {
        Teacher teacher = teacherService.findOne(id);
        model.addAttribute("teacherForm", teacher);
        return "admin/teachersAdd";
    }

    @PostMapping("/teachers/update")
    public String updateTeacher(@Valid @ModelAttribute("teacherForm") Teacher teacher, BindingResult bindingResult,
                                RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            return "admin/teachersAdd";
        }
        teacherService.save(teacher);
        return "redirect:/admin/teachers";
    }

    //Questions

    @GetMapping("/questions")
    public String questionPage(Model model) {
        model.addAttribute("module", "questions");
        model.addAttribute("questions", questionService.findAll());
        return "admin/questions";
    }


    @GetMapping("/questions/add")
    public String addQuestionPage(Model model) {
        model.addAttribute("module", "questions");
        model.addAttribute("questionForm", new Question());
        model.addAttribute("questionType", QuestionType.values());
        return "admin/questionsAdd";
    }

    @PostMapping("/questions/add")
    public String addQuestion(@ModelAttribute("questionForm") Question question) {
        List<String> questionOptions = question.getQuestionOptions();
        question.setQuestionOptions(questionOptions.stream()
                .filter(s -> !s.trim().isEmpty()).collect(Collectors.toList()));
        questionService.save(question);
        return "redirect:/admin/questions";
    }

    @PostMapping("/questions/{id}/delete")
    public String deleteQuestion(@PathVariable Long id) {
        questionService.delete(id);
        return "redirect:/admin/questions";
    }

    //Discipline

    @GetMapping("/disciplines")
    public String disciplinesPage(Model model) {
        model.addAttribute("module", "disciplines");
        List<Discipline> disciplines = disciplineService.findAll();
        disciplines.sort(Comparator.comparing(Discipline::getTitle));
        Map<String, List<Discipline>> disciplineMap = disciplines.stream()
                .collect(Collectors.groupingBy(discipline -> discipline.getCourse().getTitle()));
        model.addAttribute("disciplineMap", disciplineMap);
        return "admin/disciplines";
    }

    @GetMapping("/disciplines/add")
    public String addDisciplinePage(Model model) {
        model.addAttribute("module", "disciplines");
        model.addAttribute("disciplineForm", new DisciplineForm());

        model.addAttribute("teachers", teacherService.findAll().stream().collect(Collectors
                .toMap(x -> String.valueOf(x.getId()), Teacher::getFullName)));
        model.addAttribute("typeEnum", DisciplineType.values());
        model.addAttribute("courses", courseService.findAll().stream().collect(Collectors
                .toMap(Course::getId, Course::getTitle)));
        return "admin/disciplinesAdd";
    }

    @PostMapping("/disciplines/add")
    public String addDiscipline(@ModelAttribute("disciplineForm") DisciplineForm disciplineForm) {
        Map<DisciplineType, Set<Long>> disciplineTypeToTeachersId = disciplineForm.getTeachers();
        disciplineTypeToTeachersId.forEach((dt, t) -> {
            if (t != null && !t.isEmpty()) {
                Discipline discipline = new Discipline();
                discipline.setTitle(disciplineForm.getTitle());
                Course course = new Course();
                course.setId(disciplineForm.getCourseId());
                discipline.setCourse(course);
                discipline.setType(dt);
                discipline.setTeachers(t.stream().map(id -> teacherService.findOne(id)).collect(Collectors.toSet()));
                disciplineService.save(discipline);
            }
        });
        return "redirect:/admin/disciplines";
    }

    @GetMapping("/courses")
    public String coursesPage(Model model) {
        model.addAttribute("module", "courses");
        List<Course> courseList = courseService.findAll();
        List<Course> bachelorCourses = new ArrayList<>();
        List<Course> masterCourses = new ArrayList<>();

        for (Course course : courseList) {
            if (course.getCourseYear().isBachelor()) {
                bachelorCourses.add(course);
            } else {
                masterCourses.add(course);
            }
        }
        bachelorCourses.sort(Comparator.comparing(Course::getCourseYear));
        masterCourses.sort(Comparator.comparing(Course::getCourseYear));

        model.addAttribute("bachelorCourses", bachelorCourses);
        model.addAttribute("masterCourses", masterCourses);
        return "admin/courses";
    }

    //Survey

    @GetMapping("/survey")
    public String surveyPage(Model model) {
        model.addAttribute("module", "survey");
        List<Survey> surveys = surveyService.findAll();
        model.addAttribute("surveys", surveys);
        return "admin/survey";
    }

    @GetMapping("/survey/add")
    public String createSurveyPage(Model model) {
        model.addAttribute("module", "survey");
        model.addAttribute("surveyForm", new SurveyForm());
        model.addAttribute("courses", courseService.findAll().stream().collect(Collectors
                .toMap(Course::getId, Course::getTitle)));
        return "admin/surveyAdd";
    }

    @PostMapping("/survey/add/course")
    public String createSurveySelectCourse(Model model, SurveyForm surveyForm) {
        Map<String, String> disciplines = disciplineService.findAll().stream()
                .filter(d -> d.getCourse().getId().equals(surveyForm.getCourseId()))
                .collect(Collectors.toMap(x -> String.valueOf(x.getId()), t -> (t.getTitle() + " ("
                        + t.getType().getTitle() + ")")));
        model.addAttribute("disciplines", disciplines);
        return "admin/surveyAddDiscipline";
    }

    @PostMapping("/survey/add/discipline")
    public String createSurveySelectDisciplines(Model model, SurveyForm surveyForm) {
        Map<String, String> questions = questionService.findAll().stream()
                .collect(Collectors.toMap(x -> String.valueOf(x.getId()), Question::getTitle));
        model.addAttribute("questions", questions);
        return "admin/surveyAddQuestions";
    }

    @PostMapping("/survey/add/question")
    public String createSurveySelectQuestions(SurveyForm surveyForm) {
        surveyService.createSurvey(surveyForm);
        return "redirect:/admin/survey/confirm";
    }

    @GetMapping("/survey/confirm")
    public String confirmation(SessionStatus sessionStatus) {
        sessionStatus.setComplete();
        return "admin/confirm";
    }

}

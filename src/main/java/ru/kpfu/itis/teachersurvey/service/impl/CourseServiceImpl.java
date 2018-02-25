package ru.kpfu.itis.teachersurvey.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.teachersurvey.model.Course;
import ru.kpfu.itis.teachersurvey.repository.CourseRepository;
import ru.kpfu.itis.teachersurvey.service.CourseService;

import java.util.List;

@Service
@Transactional
public class CourseServiceImpl implements CourseService {

    private final Logger log = LoggerFactory.getLogger(CourseServiceImpl.class);

    private final CourseRepository courseRepository;

    public CourseServiceImpl(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    @Override
    public Course save(Course course) {
        log.debug("Request to save Course: {}", course);
        return courseRepository.save(course);
    }

    @Override
    @Transactional(readOnly = true)
    public Course findOne(Long id) {
        log.debug("Request to get Course: {}", id);
        return courseRepository.findOne(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Course> findAll() {
        log.debug("Request to get all Courses");
        return courseRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        log.debug("Request to delete Course: {}", id);
        courseRepository.delete(id);
    }


//    @Override
//    public void promoteCourses() {
//        List<Course> courses = courseRepository.findAll();
//        courses.forEach(c -> c.setCourseYear(c.getCourseYear().getNextYear()));
//        courses.stream().filter(c -> !c.getCourseYear().isActive()).forEach(c -> c.setActive(false));
//        courseRepository.save(courses);
//    }
//
//    @Override
//    public List<Course> getActiveBachelorCourses() {
//        return courseRepository.findAllByCourseYearIn(Arrays.asList(CourseYear.BACHELOR_FIRST,
//                CourseYear.BACHELOR_SECOND, CourseYear.BACHELOR_THIRD, CourseYear.BACHELOR_FOURTH));
//    }
//
//    @Override
//    public List<Course> getActiveMasterCourses() {
//        return courseRepository.findAllByCourseYearIn(Arrays.asList(CourseYear.MASTER_FIRST,
//                CourseYear.MASTER_SECOND));
//    }
}

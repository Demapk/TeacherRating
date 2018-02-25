package ru.kpfu.itis.teachersurvey.service;


import ru.kpfu.itis.teachersurvey.model.Course;

import java.util.List;


public interface CourseService {

    Course save(Course course);

    Course findOne(Long id);

    List<Course> findAll();

    void delete(Long id);

}

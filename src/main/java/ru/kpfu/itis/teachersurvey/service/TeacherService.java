package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.model.Teacher;

import java.util.List;

public interface TeacherService {

    Teacher save(Teacher teacher);

    Teacher findOne(Long id);

    List<Teacher> findAll();

    void delete(Long id);
}

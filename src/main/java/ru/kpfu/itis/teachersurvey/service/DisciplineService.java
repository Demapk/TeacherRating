package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.model.Discipline;

import java.util.List;

public interface DisciplineService {

    Discipline save(Discipline discipline);

    Discipline findOne(Long id);

    List<Discipline> findAll();

    void delete(Long id);
}

package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.model.Group;

import java.util.List;

public interface GroupService {

    Group save(Group group);

    Group findOne(Long id);

    List<Group> findAll();

    void delete(Long id);
}

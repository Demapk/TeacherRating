package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.model.User;

import java.util.List;

public interface UserService {

    User save(User user);

    User findOne(Long id);

    List<User> findAll();

    void delete(Long id);
}

package ru.kpfu.itis.teachersurvey.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.teachersurvey.model.Teacher;
import ru.kpfu.itis.teachersurvey.repository.TeacherRepository;
import ru.kpfu.itis.teachersurvey.service.TeacherService;

import java.util.List;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {

    private final Logger log = LoggerFactory.getLogger(TeacherServiceImpl.class);

    private final TeacherRepository teacherRepository;

    public TeacherServiceImpl(TeacherRepository teacherRepository) {
        this.teacherRepository = teacherRepository;
    }

    @Override
    public Teacher save(Teacher teacher) {
        log.debug("Request to save Teacher: {}", teacher);
        return teacherRepository.save(teacher);
    }

    @Override
    @Transactional(readOnly = true)
    public Teacher findOne(Long id) {
        log.debug("Request to get Teacher: {}", id);
        return teacherRepository.findOne(id);
    }

    @Override
    public List<Teacher> findAll() {
        log.debug("Request to get all Teachers");
        return teacherRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        log.debug("Request to delete Teacher: {}", id);
        teacherRepository.delete(id);
    }
}

package ru.kpfu.itis.teachersurvey.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.teachersurvey.model.Discipline;
import ru.kpfu.itis.teachersurvey.repository.DisciplineRepository;
import ru.kpfu.itis.teachersurvey.service.DisciplineService;

import java.util.List;

@Service
@Transactional
public class DisciplineServiceImpl implements DisciplineService {

    private final Logger log = LoggerFactory.getLogger(DisciplineServiceImpl.class);

    private DisciplineRepository disciplineRepository;

    public DisciplineServiceImpl(DisciplineRepository disciplineRepository) {
        this.disciplineRepository = disciplineRepository;
    }

    @Override
    public Discipline save(Discipline discipline) {
        log.debug("Request to save Discipline: {}", discipline);
        return disciplineRepository.save(discipline);
    }

    @Override
    @Transactional(readOnly = true)
    public Discipline findOne(Long id) {
        log.debug("Request to get Discipline: {}", id);
        return disciplineRepository.findOne(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Discipline> findAll() {
        log.debug("Request to get all Disciplines");
        return disciplineRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        log.debug("Request to delete Discipline: {}", id);
        disciplineRepository.delete(id);
    }
}

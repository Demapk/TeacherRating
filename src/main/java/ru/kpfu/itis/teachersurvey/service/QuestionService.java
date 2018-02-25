package ru.kpfu.itis.teachersurvey.service;

import ru.kpfu.itis.teachersurvey.model.Question;

import java.util.List;

public interface QuestionService {

    /**
     * Save a question
     *
     * @param question the entity to save
     * @return the persisted entity
     */
    Question save(Question question);

    /**
     * Get the "id" question
     *
     * @param id the id of entity
     * @return the entity
     */
    Question findOne(Long id);

    /**
     * Get all the courses
     *
     * @return the list of entities
     */
    List<Question> findAll();

    /**
     * Delete the "id" question
     *
     * @param id the id of entity
     */
    void delete(Long id);
}

package com.dev_incubator.dits.service.interfaces;

import com.dev_incubator.dits.persistence.entity.Answer;

import java.util.List;

public interface AnswerService {

    Answer getCorrectByDescription(Long id);

    Answer getById(long id);

    List<Answer> findAll();

    //AA
    List<Answer> getAnswerByQuestion(Long id);

    void update(Answer answer);

    void add(Answer answer);

    void delete(long id);
}

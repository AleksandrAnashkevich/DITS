package com.dev_incubator.dits.service;


import com.dev_incubator.dits.persistence.entity.Literature;
import com.dev_incubator.dits.persistence.repository.LiteratureRepository;
import com.dev_incubator.dits.service.interfaces.LiteratureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LiteratureServiceImpl implements LiteratureService {

    private LiteratureRepository literatureRepository;

    @Autowired
    public void setLiteratureRepository(LiteratureRepository literatureRepository) {
        this.literatureRepository = literatureRepository;
    }

    @Override
    public List<Literature> findAll() {
        return null;
    }


    @Override
    public Literature getById(long id) {
        return literatureRepository.getById(id);
    }

    @Override
    public void add(Literature literature) {
        literatureRepository.save(literature);
    }

    @Override
    public void update(Literature literature) {
        literatureRepository.save(literature);
    }

    @Override
    public void delete(long id) {
        literatureRepository.deleteById(id);
    }
}

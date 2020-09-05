package com.dev_incubator.dits.service;

import com.dev_incubator.dits.persistence.entity.Link;
import com.dev_incubator.dits.persistence.repository.LinkRepository;
import com.dev_incubator.dits.service.interfaces.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LinkServiceImpl implements LinkService {


    private LinkRepository linkRepository;

    @Autowired
    public void setLinkRepository(LinkRepository linkRepository) {
        this.linkRepository = linkRepository;
    }

    @Override
    public List<Link> findAll() {
        return null;
    }

    @Override
    public void add(Link link) {
        linkRepository.save(link);
    }

    @Override
    public void update(Link link) {
        linkRepository.save(link);
    }

    @Override
    public void delete(Long id) {
        linkRepository.deleteById(id);
    }
}

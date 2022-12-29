package com.codegym.service.facility.impl;

import com.codegym.model.facility.Facility;
import com.codegym.repository.facility.IFacilityRepository;
import com.codegym.service.facility.IFacilityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;


@Service
public class FacilityService implements IFacilityService {

    @Autowired
    private IFacilityRepository facilityRepository;

    @Override
    public Page<Facility> showList(Pageable pageable) {
        return facilityRepository.findAll(pageable);
    }

    @Override
    public Page<Facility> listAndSearch(Pageable pageable, String name, String facilityId) {
        return facilityRepository.listAndSearch(pageable, name, facilityId);
    }

    @Override
    public void save(Facility facility) {
        facilityRepository.save(facility);
    }

    @Override
    public void update(Facility facility) {
        facilityRepository.save(facility);
    }

    @Override
    public void deleteById(int id) {
        facilityRepository.deleteById(id);
    }

    @Override
    public Optional<Facility> findById(int id) {
        return facilityRepository.findById(id);
    }
}

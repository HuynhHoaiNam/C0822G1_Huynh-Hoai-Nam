package com.codegym.service.facility;

import com.codegym.model.facility.Facility;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

public interface IFacilityService {
    Page<Facility> showList(Pageable pageable);

    Page<Facility> listAndSearch(Pageable pageable, String name, String facilityType);

    boolean save(Facility facility);

    void update(Facility facility);

    void deleteById(int id);

    Optional<Facility> findById(int id);

    List<Facility> findAll();

}


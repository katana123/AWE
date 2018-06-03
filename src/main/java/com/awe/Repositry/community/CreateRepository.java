package com.awe.Repositry.community;

import com.awe.Entity.CCinfo;
import com.awe.Entity.CCusers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface CreateRepository extends JpaRepository<CCinfo, Integer> {
    List<CCinfo> getByCleve(Long clevel);

    List<CCinfo> getByCcname(String ccname);
}

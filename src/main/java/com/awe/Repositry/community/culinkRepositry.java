package com.awe.Repositry.community;

import com.awe.Entity.CUlink;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface culinkRepositry extends JpaRepository<CUlink, Integer> {
}

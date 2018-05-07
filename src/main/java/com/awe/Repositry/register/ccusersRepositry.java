package com.awe.Repositry.register;

import com.awe.Entity.CCusers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ccusersRepositry extends JpaRepository<CCusers,Integer> {

}

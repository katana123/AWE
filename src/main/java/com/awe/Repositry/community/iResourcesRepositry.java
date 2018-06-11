package com.awe.Repositry.community;

import com.awe.Entity.IResources;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface iResourcesRepositry extends JpaRepository<IResources,Integer> {
}

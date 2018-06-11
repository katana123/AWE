package com.awe.Repositry.community;

import com.awe.Entity.IResources;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iResourcesRepositry extends JpaRepository<IResources,Integer> {

    List<IResources> findAllByCcid(Long ccid);

    

}

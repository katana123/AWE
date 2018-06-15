package com.awe.Repositry.community;

import com.awe.Entity.IResources;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface iResourcesRepositry extends JpaRepository<IResources, Integer>, JpaSpecificationExecutor<IResources> {

    List<IResources> findAllByCcid(Long ccid);

    Page<IResources> findByCcid(Pageable pageable, Long ccid);
}

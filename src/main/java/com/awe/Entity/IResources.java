package com.awe.Entity;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "i_resources")
@Entity
public class IResources {
    private Integer id;
    private Integer majorid;
    private Integer minorid;
    private String path;
    private Date uploadtime;
    private String size;
    private String title;

    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}

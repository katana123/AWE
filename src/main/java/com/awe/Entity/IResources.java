package com.awe.Entity;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;


@Table(name = "i_resources")
@Entity
public class IResources {
    private Integer id;
    private Long ccid;
    private String contentType;
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

    public Integer getMajorid() {
        return majorid;
    }

    public void setMajorid(Integer majorid) {
        this.majorid = majorid;
    }

    public Integer getMinorid() {
        return minorid;
    }

    public void setMinorid(Integer minorid) {
        this.minorid = minorid;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getCcid() {
        return ccid;
    }

    public void setCcid(Long ccid) {
        this.ccid = ccid;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    @Override
    public String toString() {
        return "IResources{" +
                "id=" + id +
                ", ccid=" + ccid +
                ", contentType='" + contentType + '\'' +
                ", majorid=" + majorid +
                ", minorid=" + minorid +
                ", path='" + path + '\'' +
                ", uploadtime=" + uploadtime +
                ", size='" + size + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}

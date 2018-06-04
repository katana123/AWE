package com.awe.Entity;

import javax.persistence.*;
import java.util.Date;

@Table(name = "i_ulink")
@Entity
public class IUlink {
    private Integer id;
    private Integer ccid;
    private Integer cuid;
    private Integer roleid;

    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCcid() {
        return ccid;
    }

    public void setCcid(Integer ccid) {
        this.ccid = ccid;
    }

    public Integer getCuid() {
        return cuid;
    }

    public void setCuid(Integer cuid) {
        this.cuid = cuid;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    @Override
    public String toString() {
        return "IUlink{" +
                "id=" + id +
                ", ccid=" + ccid +
                ", cuid=" + cuid +
                ", roleid=" + roleid +
                '}';
    }
}

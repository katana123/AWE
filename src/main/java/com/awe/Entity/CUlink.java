package com.awe.Entity;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;

@Table(name = "c_ulink")
@Entity
public class CUlink {

    private long id;
    private long ccid;
    private long cuid;
    private long roleid;
    private Date jointime;

    @GeneratedValue
    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getCcid() {
        return ccid;
    }

    public void setCcid(long ccid) {
        this.ccid = ccid;
    }

    public long getCuid() {
        return cuid;
    }

    public void setCuid(long cuid) {
        this.cuid = cuid;
    }

    public long getRoleid() {
        return roleid;
    }

    public void setRoleid(long roleid) {
        this.roleid = roleid;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getJointime() {
        return jointime;
    }

    public void setJointime(Date jointime) {
        this.jointime = jointime;
    }

    @Override
    public String toString() {
        return "CUlink{" +
                "id=" + id +
                ", ccid=" + ccid +
                ", cuid=" + cuid +
                ", roleid=" + roleid +
                ", jointime=" + jointime +
                '}';
    }
}

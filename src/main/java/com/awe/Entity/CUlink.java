package com.awe.Entity;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;

@Table(name = "c_ulink")
@Entity
public class CUlink {

    private long id;
    private long ccid;
    private CCusers cCusers;
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

    @JoinColumn(name = "cuid")//加入一列作为外键
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    public CCusers getcCusers() {
        return cCusers;
    }

    public void setcCusers(CCusers cCusers) {
        this.cCusers = cCusers;
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
                ", cCusers=" + cCusers +
                ", roleid=" + roleid +
                ", jointime=" + jointime +
                '}';
    }
}

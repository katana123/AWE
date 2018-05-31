package com.awe.Entity;


import javax.persistence.*;

@Table(name = "c_ulink")
@Entity
public class CUlink {

    private long id;
    private long ccid;
    private long cuid;
    private long roleid;

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

    @Override
    public String toString() {
        return "CUlink{" +
                "id=" + id +
                ", ccid=" + ccid +
                ", cuid=" + cuid +
                ", roleid=" + roleid +
                '}';
    }
}

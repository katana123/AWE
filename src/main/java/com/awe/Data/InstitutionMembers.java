package com.awe.Data;

import lombok.Data;

import java.util.Date;

@Data
public class InstitutionMembers {
    private long cuid;
    private String cusername;
    private long cqqid;
    private String cupn;
    private Date jointime;

    public InstitutionMembers(long cuid) {
        this.cuid = cuid;
    }

    public InstitutionMembers(long cuid, String cusername, long cqqid, String cupn, Date jointime) {
        this.cuid = cuid;
        this.cusername = cusername;
        this.cqqid = cqqid;
        this.cupn = cupn;
        this.jointime = jointime;
    }
}

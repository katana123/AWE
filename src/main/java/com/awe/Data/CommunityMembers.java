package com.awe.Data;

import lombok.Data;

import java.util.Date;

@Data
public class CommunityMembers {
    private long cuid;
    private String cusername;
    private long cqqid;
    private String cupn;
    private Date jointime;

    //无参构造器Constructor
    public CommunityMembers() {

    }

    //有参构造器Constructor
    public CommunityMembers(long cuid, String cusername, long cqqid, String cupn, Date jointime) {
        this.cuid = cuid;
        this.cusername = cusername;
        this.cqqid = cqqid;
        this.cupn = cupn;
        this.jointime = jointime;
    }
}

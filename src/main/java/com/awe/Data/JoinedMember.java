package com.awe.Data;

import lombok.Data;

import java.util.Date;

@Data
public class JoinedMember {
    private long userid;
    private String cusername;
    private long cqqid;
    private String cupn;
    private Date jointime;

    //无参构造器Constructor
    public JoinedMember() {
        
    }

    //有参构造器Constructor
    public JoinedMember(long userid, String cusername, long cqqid, String cupn, Date jointime) {
        this.userid = userid;
        this.cusername = cusername;
        this.cqqid = cqqid;
        this.cupn = cupn;
        this.jointime = jointime;
    }
}

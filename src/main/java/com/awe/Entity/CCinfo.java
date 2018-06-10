package com.awe.Entity;

import javax.persistence.*;

@Table(name = "c_cinfo", uniqueConstraints = {@UniqueConstraint(columnNames = "ccname")})
@Entity
public class CCinfo {

    private Integer ccid;
    private long cuid;
    private String ccname;
    private String cct;
    private String ccl;
    private String ccp;
    private String cclpa;
    private String cccname;
    private String clname;
    private String cbca;
    private String clla;
    private String cidfa;
    private String cidba;
    private String ccinfo;
    private String ccb;
    private long cleve;
    private String cqq;
    private String cphone;
    private String cemail;
    private String cidnum;

    @GeneratedValue
    @Id
    public Integer getCcid() {
        return ccid;
    }

    public void setCcid(Integer ccid) {
        this.ccid = ccid;
    }


    public long getCuid() {
        return cuid;
    }

    public void setCuid(long cuid) {
        this.cuid = cuid;
    }


    public String getCcname() {
        return ccname;
    }

    public void setCcname(String ccname) {
        this.ccname = ccname;
    }


    public String getCcl() {
        return ccl;
    }

    public void setCcl(String ccl) {
        this.ccl = ccl;
    }

    public String getCct() {
        return cct;
    }

    public void setCct(String cct) {
        this.cct = cct;
    }

    public String getCcp() {
        return ccp;
    }

    public void setCcp(String ccp) {
        this.ccp = ccp;
    }


    public String getCclpa() {
        return cclpa;
    }

    public void setCclpa(String cclpa) {
        this.cclpa = cclpa;
    }


    public String getCccname() {
        return cccname;
    }

    public void setCccname(String cccname) {
        this.cccname = cccname;
    }


    public String getClname() {
        return clname;
    }

    public void setClname(String clname) {
        this.clname = clname;
    }


    public String getCbca() {
        return cbca;
    }

    public void setCbca(String cbca) {
        this.cbca = cbca;
    }


    public String getClla() {
        return clla;
    }

    public void setClla(String clla) {
        this.clla = clla;
    }


    public String getCidfa() {
        return cidfa;
    }

    public void setCidfa(String cidfa) {
        this.cidfa = cidfa;
    }


    public String getCidba() {
        return cidba;
    }

    public void setCidba(String cidba) {
        this.cidba = cidba;
    }


    public String getCcinfo() {
        return ccinfo;
    }

    public void setCcinfo(String ccinfo) {
        this.ccinfo = ccinfo;
    }


    public String getCcb() {
        return ccb;
    }

    public void setCcb(String ccb) {
        this.ccb = ccb;
    }


    public long getCleve() {
        return cleve;
    }

    public void setCleve(long cleve) {
        this.cleve = cleve;
    }

    public String getCqq() {
        return cqq;
    }

    public void setCqq(String cqq) {
        this.cqq = cqq;
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone;
    }

    public String getCemail() {
        return cemail;
    }

    public void setCemail(String cemail) {
        this.cemail = cemail;
    }

    public String getCidnum() {
        return cidnum;
    }

    public void setCidnum(String cidnum) {
        this.cidnum = cidnum;
    }
    @Override
    public String toString() {
        return "CCinfo{" +
                "ccid=" + ccid +
                ", cuid=" + cuid +
                ", ccname='" + ccname + '\'' +
                ", ccl='" + ccl + '\'' +
                ", ccp='" + ccp + '\'' +
                ", cclpa='" + cclpa + '\'' +
                ", cccname='" + cccname + '\'' +
                ", clname='" + clname + '\'' +
                ", cbca='" + cbca + '\'' +
                ", clla='" + clla + '\'' +
                ", cidfa='" + cidfa + '\'' +
                ", cidba='" + cidba + '\'' +
                ", ccinfo='" + ccinfo + '\'' +
                ", ccb='" + ccb + '\'' +
                ", cleve=" + cleve +
                ", cqq='" + cqq + '\'' +
                ", cphone='" + cphone + '\'' +
                ", cemail='" + cemail + '\'' +
                ", cidnum='" + cidnum + '\'' +
                '}';
    }
}

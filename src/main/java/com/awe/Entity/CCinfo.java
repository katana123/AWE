package com.awe.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "c_cinfo")
@Entity
public class CCinfo {

    private Integer ccid;
    private long cuid;
    private String ccname;
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
                '}';
    }
}

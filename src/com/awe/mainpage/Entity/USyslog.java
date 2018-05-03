package com.sample;


public class USyslog {

  private String ulid;
  private long cuid;
  private long sOptId;
  private java.sql.Timestamp ldate;
  private String lcontext;
  private long uMdid;
  private long uPf;


  public String getUlid() {
    return ulid;
  }

  public void setUlid(String ulid) {
    this.ulid = ulid;
  }


  public long getCuid() {
    return cuid;
  }

  public void setCuid(long cuid) {
    this.cuid = cuid;
  }


  public long getSOptId() {
    return sOptId;
  }

  public void setSOptId(long sOptId) {
    this.sOptId = sOptId;
  }


  public java.sql.Timestamp getLdate() {
    return ldate;
  }

  public void setLdate(java.sql.Timestamp ldate) {
    this.ldate = ldate;
  }


  public String getLcontext() {
    return lcontext;
  }

  public void setLcontext(String lcontext) {
    this.lcontext = lcontext;
  }


  public long getUMdid() {
    return uMdid;
  }

  public void setUMdid(long uMdid) {
    this.uMdid = uMdid;
  }


  public long getUPf() {
    return uPf;
  }

  public void setUPf(long uPf) {
    this.uPf = uPf;
  }

}

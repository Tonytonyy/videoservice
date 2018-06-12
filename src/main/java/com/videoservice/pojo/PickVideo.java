package com.videoservice.pojo;

import java.time.LocalDate;
import java.util.Date;

public class PickVideo {
    private long id;
    private LocalDate createTime;
    private LocalDate modifyTime;
    private String haveCollect;
    private String haveSee;

    public long getId() {
        return id;
    }

    public LocalDate getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDate createTime) {
        this.createTime = createTime;
    }

    public LocalDate getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(LocalDate modifyTime) {
        this.modifyTime = modifyTime;
    }

    public void setId(long id) {
        this.id = id;
    }



    public String getHaveCollect() {
        return haveCollect;
    }

    public void setHaveCollect(String haveCollect) {
        this.haveCollect = haveCollect;
    }

    public String getHaveSee() {
        return haveSee;
    }

    public void setHaveSee(String haveSee) {
        this.haveSee = haveSee;
    }
}

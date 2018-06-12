package com.videoservice.pojo;

import java.time.LocalDate;
import java.util.Date;

public class Video {
    private long id;
    private long userId;
    private String videoName;
    private LocalDate createTime;
    private LocalDate modifyTime;
    private Integer isdeleted;
    private String seeUsers;
    private String pptID;
    private String type;
    private String content;
    private String userName;
    private String seeUsersList;

    public long getId() {
        return id;
    }

    public String getSeeUsersList() {
        return seeUsersList;
    }

    public void setSeeUsersList(String seeUsersList) {
        this.seeUsersList = seeUsersList;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
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

    public Integer getIsdeleted() {
        return isdeleted;
    }

    public void setIsdeleted(Integer isdeleted) {
        this.isdeleted = isdeleted;
    }

    public String getSeeUsers() {
        return seeUsers;
    }

    public void setSeeUsers(String seeUsers) {
        this.seeUsers = seeUsers;
    }

    public String getPptID() {
        return pptID;
    }

    public void setPptID(String pptID) {
        this.pptID = pptID;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "Video{" +
                "id=" + id +
                ", userId=" + userId +
                ", videoName='" + videoName + '\'' +
                ", createTime='" + createTime + '\'' +
                ", modifyTime='" + modifyTime + '\'' +
                ", isdeleted=" + isdeleted +
                ", seeUsers='" + seeUsers + '\'' +
                ", pptID='" + pptID + '\'' +
                ", type='" + type + '\'' +
                ", content='" + content + '\'' +
                ", userName='" + userName + '\'' +
                ", seeUsersList='" + seeUsersList + '\'' +
                '}';
    }
}

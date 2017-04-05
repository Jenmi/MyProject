package com.ijenmi.letsgo.model;

import java.util.Date;

public class LeaveAtch {
    private Integer atchId;

    private String orgFileName;

    private String serverFilePathName;

    private String description;

    private Date uploadTime;

    private String uploadUserName;

    public Integer getAtchId() {
        return atchId;
    }

    public void setAtchId(Integer atchId) {
        this.atchId = atchId;
    }

    public String getOrgFileName() {
        return orgFileName;
    }

    public void setOrgFileName(String orgFileName) {
        this.orgFileName = orgFileName == null ? null : orgFileName.trim();
    }

    public String getServerFilePathName() {
        return serverFilePathName;
    }

    public void setServerFilePathName(String serverFilePathName) {
        this.serverFilePathName = serverFilePathName == null ? null : serverFilePathName.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public String getUploadUserName() {
        return uploadUserName;
    }

    public void setUploadUserName(String uploadUserName) {
        this.uploadUserName = uploadUserName == null ? null : uploadUserName.trim();
    }
}
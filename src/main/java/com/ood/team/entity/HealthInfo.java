package com.ood.team.entity;

/**
 * HealthInfo Bean
 *
 * @author Sihao Ren
 */
public class HealthInfo {
    private Integer healthinfoId;

    private Integer personId;

    private String updateDate;

    private String uploadDate;

    private String content;

    private Integer status;

    private String picture_path;//picture_path

    public Object image;

    public void setImage(Object image){this.image = image;}
    public Object getImage( ){return image;}
    public Integer getHealthinfoId() {
        return healthinfoId;
    }

    public void setHealthinfoId(Integer healthinfoId) {
        this.healthinfoId = healthinfoId;
    }

    public Integer getPersonId() {
        return personId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate == null ? null : updateDate.trim();
    }

    public String getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(String uploadDate) {
        this.uploadDate = uploadDate == null ? null : uploadDate.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getPicture_path() {
        return picture_path;
    }

    public void setPicture_path(String picture_path) {
        this.picture_path = picture_path;
    }

}
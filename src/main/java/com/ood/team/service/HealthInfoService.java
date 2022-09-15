package com.ood.team.service;

import com.ood.team.entity.HealthInfo;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * HealthInfo Service Implementation
 *
 * @author Sihao Ren
 */
public interface HealthInfoService {
    /**
     * get HealthInfo
     * used By admin
     *
     * @return List
     */
    public List<HealthInfo> getHealthInfo();

    /**
     * get HealthInfo By Id
     * used By user
     *
     * @param personId
     * @return HealthInfo
     */
    public HealthInfo getHealthInfoById(Integer personId);

    /**
     * get HealthInfo By Param
     * used By admin
     *
     * @param healthInfo
     * @return List
     */
    public List<HealthInfo> getHealthInfoByParam(HealthInfo healthInfo);

    /**
     * insert HealthInfo
     * used By user
     *
     * @param healthInfo
     * @return Integer
     */
    public Integer insertHealthInfo(HealthInfo healthInfo);

    /**
     * update HealthInfo
     * used By admin
     *
     * @param healthInfo
     * @return Integer
     */
    public Integer updateHealthInfo(HealthInfo healthInfo);
    public Integer updateHealthBypersonId(Integer personId);
    /**
     * delete HealthInfo
     * used By user&admin
     *
     * @param healthInfoId
     * @return Integer
     */
    public Integer deleteHealthInfo(Integer healthInfoId);

    /**
     * get result of upload health info photo
     * used By user
     *
     * @param photo
     * @param dirPath
     * @param portraitPath
     * @return
     */
    public Map<String, Object> getUploadResult(MultipartFile photo, String dirPath, String portraitPath);

    /**
     * upload health info photo
     * used By user
     *
     * @param photo
     * @param path
     * @return
     */
    public  Map<String, Object> uploadPhoto(MultipartFile photo, String path);

    public Integer uploadImage(MultipartFile file, Integer studentId) throws IOException, SQLException;
    public void getImage(Integer studentId, HttpServletResponse response);
}

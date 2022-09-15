package com.ood.team.service.impl;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.ood.team.dao.HealthInfoMapper;
import com.ood.team.entity.HealthInfo;
import com.ood.team.entity.HealthInfoExample;
import com.ood.team.service.HealthInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialBlob;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * HealthInfo Service
 *
 * @author Sihao Ren
 */
@Service("healthInfoService")
public class HealthInfoServiceImpl implements HealthInfoService {

    @Autowired
    HealthInfoMapper healthInfoMapper;

    /**
     * get HealthInfo
     * used By admin
     *
     * @return List
     */
    @Override
    public List<HealthInfo> getHealthInfo() {
        try{
            List<HealthInfo> list = healthInfoMapper.healthInfoList();
            if(!list.isEmpty()){
                return list;
            }else {
                return null;
            }
        }catch (Exception e){
            return null;
        }
    }

    /**
     * get HealthInfo By Id
     * used By user
     *
     * @param personId
     * @return HealthInfo
     */
    @Override
    public HealthInfo getHealthInfoById(Integer personId) {
        return healthInfoMapper.selectHealthInfoStatus(personId);
    }

    /**
     * get HealthInfo By Param
     * used By admin
     *
     * @param healthInfo
     * @return List
     */
    @Override
    public List<HealthInfo> getHealthInfoByParam(HealthInfo healthInfo) {
        HealthInfoExample healthInfoExample = new HealthInfoExample();
        HealthInfoExample.Criteria criteria = healthInfoExample.createCriteria();
        if(healthInfo.getHealthinfoId() != null){
            criteria.andHealthinfoIdEqualTo(healthInfo.getHealthinfoId());
        }
        if(healthInfo.getPersonId() != null){
            criteria.andPersonIdEqualTo(healthInfo.getPersonId());
        }
        if(healthInfo.getStatus() != null){
            criteria.andStatusEqualTo(healthInfo.getStatus());
        }
        if(healthInfo.getUpdateDate()!=null){
            criteria.andUpdateDateEqualTo(healthInfo.getUpdateDate());
        }
        if(healthInfo.getUploadDate()!=null){
            criteria.andUploadDateEqualTo(healthInfo.getUploadDate());
        }
        if(healthInfo.getContent()!=null){
            criteria.andContentEqualTo(healthInfo.getContent());
        }
        return healthInfoMapper.selectByExample(healthInfoExample);
    }

    /**
     * insert HealthInfo
     * used By user
     *
     * @param healthInfo
     * @return Integer
     */
    @Override
    public Integer insertHealthInfo(HealthInfo healthInfo) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date uploadDate = new Date();
        healthInfo.setUploadDate(sdf.format(uploadDate));
        Date updateDate = new Date();
        healthInfo.setUpdateDate(sdf.format(updateDate));
        healthInfo.setStatus(0);

        Integer returnNum = healthInfoMapper.insert(healthInfo);
        if(returnNum == 1){
            return returnNum;
        }else {
            return -1;
        }
    }

    @Override
    public void getImage(Integer studentId, HttpServletResponse response) {
        try {
            HealthInfo healthInfo = healthInfoMapper.selectHealthInfoStatus(studentId);
            byte[] image = (byte[])healthInfo.getImage();
            String value = new String(image, StandardCharsets.UTF_8);
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] bytes = decoder.decodeBuffer(value);
            for(int i=0;i<bytes.length;i++){
                if(bytes[i]<0){
                    bytes[i]+=256;
                }
            }
            response.setContentType("image/jpeg");
            ServletOutputStream out = response.getOutputStream();
            out.write(bytes);
            out.flush();
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    @Override
    public Integer uploadImage(MultipartFile file, Integer studentId) throws IOException, SQLException {
        HealthInfo healthInfo = healthInfoMapper.selectHealthInfoStatus(studentId);
        if(!file.isEmpty()){
            BASE64Encoder encoder = new BASE64Encoder();
            String image = encoder.encode(file.getBytes());
            Blob blob = new SerialBlob(image.getBytes(StandardCharsets.UTF_8));
            healthInfo.setImage(blob);
            return healthInfoMapper.updateByPrimaryKey(healthInfo);
        }else {
            return -1;
        }
    }
    @Override
    public Integer updateHealthInfo(HealthInfo healthInfo) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date uploadDate = new Date();
        healthInfo.setUploadDate(sdf.format(uploadDate));

        return healthInfoMapper.updateByPrimaryKey(healthInfo);
    }

    /**
     * delete HealthInfo
     * used By user&admin
     *
     * @param healthInfoId
     * @return Integer
     */
    @Override
    public Integer deleteHealthInfo(Integer healthInfoId) {
        return healthInfoMapper.deleteByPrimaryKey(healthInfoId);
    }

    /**
     * upload health info photo
     * used By user
     *
     * @param photo
     * @param dirPath
     * @param portraitPath
     * @return
     */
    @Override
    public Map<String, Object> getUploadResult(MultipartFile photo, String dirPath, String portraitPath) {
        //Error message storing file upload failure
        Map<String, Object> error_result = new HashMap<>();
        //Stores the upload result information of the avatar
        Map<String, Object> upload_result = new HashMap<>();

        if (!photo.isEmpty() && photo.getSize() > 0) {
            String orginalName = photo.getOriginalFilename();
            error_result = uploadPhoto(photo, dirPath);
            if (error_result != null) {
                return error_result;
            }
            String newPhotoName = UUID.randomUUID() + "__" + orginalName;
            try {
                photo.transferTo(new File(dirPath + newPhotoName));
                upload_result.put("success", true);
                upload_result.put("portrait_path", portraitPath + newPhotoName);
            } catch (IOException e) {
                e.printStackTrace();
                upload_result.put("success", false);
                upload_result.put("msg", "failed!");
                return upload_result;
            }

        } else {
            upload_result.put("success", false);
            upload_result.put("msg", "failed!");
        }
        return upload_result;
    }

    /**
     * upload health info photo
     * used By user
     *
     * @param photo
     * @param path
     * @return
     */
    @Override
    public Map<String, Object> uploadPhoto(MultipartFile photo, String path) {
//
        return null;
    }
    @Override
    public Integer updateHealthBypersonId(Integer personId){
        return healthInfoMapper.updateHealthBypersonId(personId);
    }



}

package com.ood.team.service.impl;

import com.ood.team.dao.CategoryMapper;
import com.ood.team.entity.Category;
import com.ood.team.entity.CategoryExample;
import com.ood.team.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * Category Service
 *
 * @author Ruofan Li
 */
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

//    @Autowired
    CategoryMapper categoryMapper;

    /**
     * get CategoryList
     *
     * @return List
     */
    @Override
    public List<Category> categoryList() {
        try{
            List<Category> list = categoryMapper.categoryList();
            return list;
        }catch (Exception e){
            return null;
        }
    }

    /**
     * getCategory BY Id
     * used BY user&admin
     *
     * @param categoryId
     * @return activityCategory
     */
    @Override
    public Category getCategoryById(Integer categoryId) {
        if(categoryId == null){
            return null;
        }
        try{
            Category category = categoryMapper.selectByPrimaryKey(categoryId);
            return  category;
        }catch (Exception e){
            return null;
        }
    }

    /**
     * getCategory BY Name
     * used BY user&admin
     *
     * @param categoryName
     * @return List<ActivityC>
     */
    @Override
    public List<Category> getCategoryByName(String categoryName) {
        if(categoryName==null|| categoryName.equals("")){
            return null;
        }
        try{
            CategoryExample example = new CategoryExample();
            CategoryExample.Criteria criteria = example.createCriteria();
            criteria.andcategoryNameEqualTo(categoryName);
            List<Category> list = categoryMapper.selectByExample(example);
            if(list != null){
                return list;
            }else
                return null;
        }catch (Exception e){
            return null;
        }
    }

    /**
     * updateCategory
     * used BY admin
     *
     * @param category
     * @return Integer
     */
    @Override
    public Integer updateCategory(Category category) {
        if(Objects.isNull(category)){
            return -1;
        }
        try{
            Integer categoryId = category.getCategoryId();
            //check whether categoryId exists in DB
            Category instance = categoryMapper.selectByPrimaryKey(categoryId);
            //instance doesn't exist
            if(Objects.isNull(instance)){
                return -1;
            }
            //instance exists
            Integer inta = categoryMapper.updateByPrimaryKey(category);
            if(inta >= 0){
                return inta;
            }else {
                return -1;
            }
        }catch (Exception e){
            return -1;
        }
    }

    /**
     * insertCategory
     * used BY admin
     *
     * @param category
     * @return Integer
     */
    @Override
    public Integer insertCategory(Category category) {
        //check whether already existed the activityCategoryId
        Integer acId = category.getCategoryId();
        //check whether already existed the activityCategoryName
        String acName = category.getCategoryName();
        try {
            Category idInstance = categoryMapper.selectByPrimaryKey(acId);
            //exists
            if(Objects.nonNull(idInstance)){
                return -1;
            }
            CategoryExample example = new CategoryExample();
            CategoryExample.Criteria criteria = example.createCriteria();
            criteria.andcategoryNameEqualTo(acName);
            List<Category> nameInstanceList = categoryMapper.selectByExample(example);
            //exists
            if(nameInstanceList != null){
                return -1;
            }
            //if not exist, insert
            Integer num = categoryMapper.insert(category);
            if(num == 1){
                return num;
            }else {
                return -1;
            }
        }catch (Exception e){
            return -1;
        }
    }

    /**
     * deleteCategory
     * Used By admin
     *
     * @param categoryId
     * @return Integer
     */
    @Override
    public Integer deleteCategory(Integer categoryId) {
        Category category = categoryMapper.selectByPrimaryKey(categoryId);
        if(category!=null){
            Integer returnNum = categoryMapper.deleteByPrimaryKey(categoryId);
            if(returnNum == 1){
                return returnNum;
            }else {
                return -1;
            }
        }else {
            return -1;
        }
    }
}

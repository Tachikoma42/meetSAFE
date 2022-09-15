package com.ood.team.dao;

import com.ood.team.entity.Category;
import com.ood.team.entity.CategoryExample;

import java.util.List;

/**
 * ActivityCategory Mapper
 *
 * @author Ruofan Li
 */
public interface CategoryMapper {



    /**
     * delete BY CategoryExample
     *
     * @param example
     * @return Integer
     */
    Integer deleteByExample(CategoryExample example);

    /**
     * delete BY categoryId
     *
     * @param categoryId
     * @return Integer
     */
    Integer deleteByPrimaryKey(Integer categoryId);

    /**
     * insert Category
     *
     * @param category
     * @return Integer
     */
    Integer insert(Category category);

    /**
     * insert BY params
     *
     * @param category
     * @return Integer
     */
    Integer insertSelective(Category category);

    /**
     * select BY CategoryExample
     *
     * @param example
     * @return List
     */
    List<Category> selectByExample(CategoryExample example);

    /**
     * select BY categoryId
     *
     * @param categoryId
     * @return ActivityCategory
     */
    Category selectByPrimaryKey(Integer categoryId);

    /**
     * update BY Category
     *
     * @param category
     * @return Integer
     */
    Integer updateByPrimaryKeySelective(Category category);

    /**
     * update BY PrimaryKey
     *
     * @param category
     * @return Integer
     */
    Integer updateByPrimaryKey(Category category);

    /**
     * get CategoryList
     *
     * @return List
     */
    List<Category> categoryList();
}

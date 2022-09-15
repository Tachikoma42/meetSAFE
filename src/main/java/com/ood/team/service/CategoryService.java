package com.ood.team.service;

import com.ood.team.entity.Category;

import java.util.List;

/**
 * CategoryService Implementation
 *
 * @author Ruofan Li
 */
public interface CategoryService {
    /**
     * get CategoryList
     * @return List
     */
    public List<Category> categoryList();

    /**
     * getCategory BY Id
     * @param categoryId
     * @return activityCategory
     */
    public Category getCategoryById(Integer categoryId);

    /**
     * getCategory BY Name
     * @param categoryName
     * @return List<ActivityC>
     */
    public List<Category> getCategoryByName(String categoryName);

    /**
     * updateCategory
     * @param activityCategory
     * @return Integer
     */
    public Integer updateCategory(Category activityCategory);

    /**
     * insertCategory
     * @param activityCategory
     * @return Integer
     */
    public Integer insertCategory(Category activityCategory);

    /**
     * deleteCategory
     * @param categoryId
     * @return Integer
     */
    public Integer deleteCategory(Integer categoryId);
}

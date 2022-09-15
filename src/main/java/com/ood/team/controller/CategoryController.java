package com.ood.team.controller;

import com.ood.team.service.CategoryService;
import com.ood.team.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Category Controller
 *
 * @author Ruofan Li
 */
//@Controller
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    CategoryService categoryService;

    //new category
    @RequestMapping("")
    @ResponseBody
    public Map<String, Object> insertCategory(Category category){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = categoryService.insertCategory(category);
        if(returnNum == 1){
            result.put("msg","insert succeed");
        }else {
            result.put("msg","insert fail");
        }
        return result;
    }

    //update category
    @RequestMapping("")
    @ResponseBody
    public Map<String, Object> updateCategory(Category category){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = categoryService.updateCategory(category);
        if(returnNum == 1){
            result.put("msg","update succeed");
        }else {
            result.put("msg","update fail");
        }
        return result;
    }

    //delete category
    @RequestMapping("")
    @ResponseBody
    public Map<String, Object> deleteCategory(Integer categoryId){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = categoryService.deleteCategory(categoryId);
        if(returnNum == 1){
            result.put("msg","delete succeed");
        }else {
            result.put("msg","delete fail");
        }
        return result;
    }

    //batch Delete Category
    @RequestMapping("")
    @ResponseBody
    public Map<String, Object> batchDeleteCategory(List<Integer> categoryIdList){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = 0;
        for(int i=0;i<categoryIdList.size();i++){
            returnNum += categoryService.deleteCategory(categoryIdList.get(i));
        }
        if(returnNum == categoryIdList.size()){
            result.put("msg","batch delete succeed");
        }else {
            result.put("msg","batch delete fail");
        }
        return result;
    }

    //category list
    @RequestMapping("")
    @ResponseBody
    public Map<String, Object> categoryList(){
        Map<String, Object> result = new HashMap<>();
        List<Category> categoryList = categoryService.categoryList();
        if(categoryList.isEmpty()){
            result.put("msg","query fail");
        }else {
            result.put("msg","query succeed");
            result.put("list",categoryList);
        }
        return result;
    }
}

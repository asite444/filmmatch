package com.movie.filmmatch.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.movie.filmmatch.goods.service.CategoriesService;
import com.movie.filmmatch.goods.vo.CategoriesVo;

import org.springframework.ui.Model;

@Controller
@RequestMapping("/categories/")
public class CategoriesController {

    @Autowired
    CategoriesService categories_service;

    @RequestMapping("list.do")
    public String Categories_list(Model model){

        String search="no";
        List<CategoriesVo> list=categories_service.selecCategoriesDe();
        model.addAttribute("list",list);
        return "admin/categories/categories_list";
    }

    @RequestMapping("insert")
    public String Categories_Insert(){

        System.out.println("눌렸음");
        return "list.do";
    }


}

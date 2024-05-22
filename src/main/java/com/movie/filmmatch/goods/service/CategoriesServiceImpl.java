package com.movie.filmmatch.goods.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.filmmatch.goods.dao.CategoriesDao;
import com.movie.filmmatch.goods.vo.CategoriesVo;

@Service
public class CategoriesServiceImpl implements CategoriesService {

    @Autowired
    CategoriesDao categories_dao;


    @Override
    public List<CategoriesVo> selecCategoriesDe() {
        
        boolean isTopLevel=true;
        Map<String,Object> map=new HashMap<>();
        map.put("isTopLevel", isTopLevel);
        List<CategoriesVo> list=categories_dao.selectList(map);
        return list;
    }

    @Override
    public List<CategoriesVo> selecCategoriesSo() {
       
        throw new UnsupportedOperationException("Unimplemented method 'selecCategoriesSo'");
    }

}

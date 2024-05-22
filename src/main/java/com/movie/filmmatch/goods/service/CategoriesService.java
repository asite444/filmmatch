package com.movie.filmmatch.goods.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.movie.filmmatch.goods.vo.CategoriesVo;

@Service
public interface CategoriesService {

    /**
     * 카테고리 대분류
     * @param search
     * @return
     */
    public List<CategoriesVo> selecCategoriesDe();
    
    /**
     * 카테고리 소분류
     * @param search
     * @return
     */
    public List<CategoriesVo> selecCategoriesSo();


}

package com.movie.filmmatch.goods.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.movie.filmmatch.goods.service.GoodsClickService;
import com.movie.filmmatch.goods.vo.GoodsClickVo;


@Controller
@RequestMapping("/goodsclick/")
public class GoodsClickController {


    @Autowired
    GoodsClickService goods_clickService;
    /**
     * 상품 클릭 통계치 조회
     * @param param
     * @return
     */
@RequestMapping("list.do")
public String requestMethodName(Model model) {

   Map<String,List<GoodsClickVo>> map= goods_clickService.select_list();
   model.addAttribute("map", map);

    return "admin/goods/goodsClickStats";
}




}

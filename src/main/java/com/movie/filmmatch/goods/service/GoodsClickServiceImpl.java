package com.movie.filmmatch.goods.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.filmmatch.goods.dao.GoodsClickDao;
import com.movie.filmmatch.goods.vo.GoodsClickVo;
import com.movie.filmmatch.goods.vo.GoodsVo;
import com.movie.filmmatch.member.vo.MemberVo;
import com.movie.filmmatch.util.MemberUtils;

@Service
public class GoodsClickServiceImpl implements GoodsClickService {


    @Autowired
    GoodsClickDao goods_clickDao;

    /**
     * 상품 조회자 정보 저장
     */
    @Override
    public int handle_goods_Click(MemberVo memberVo, GoodsVo goodsVo) {
    int res=0;

      Map<String,Object> map=new HashMap<String,Object>(); 
      map.put("mem_idx",memberVo.getMem_idx());
      map.put("goods_idx",goodsVo.getGoods_idx());
 

      GoodsClickVo contains_goodsClickVo=goods_clickDao.selectOne_goods_click(map);
      
      if(contains_goodsClickVo==null){
        GoodsClickVo goodsClickVo=new GoodsClickVo();
        goodsClickVo.setGoods_idx(goodsVo.getGoods_idx());
        goodsClickVo.setMem_idx(memberVo.getMem_idx());
        goodsClickVo.setGoods_name(goodsVo.getGoods_name());
        goodsClickVo.setCate_id(goodsVo.getCate_id());
        goodsClickVo.setGender(memberVo.getMem_gender());
        goodsClickVo.setAge_group(MemberUtils.getAgeGroup(memberVo.getMem_birth()));
        res=goods_clickDao.insert_goods_click(goodsClickVo);


      }else{
        res=goods_clickDao.update_goods_click(map);
      }



       return res;
    }

}

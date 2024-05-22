package com.movie.filmmatch.goods.service;

import org.springframework.stereotype.Service;

import com.movie.filmmatch.goods.vo.GoodsVo;
import com.movie.filmmatch.member.vo.MemberVo;

@Service
public interface GoodsClickService {

    /**
     * 상품 클릭 조정 메소드
     * @param mem_idx
     * @param goodsVo
     * @return
     */
    public int handle_goods_Click(MemberVo memberVo,GoodsVo goodsVo);

}

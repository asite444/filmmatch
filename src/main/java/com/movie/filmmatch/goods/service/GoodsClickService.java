package com.movie.filmmatch.goods.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.movie.filmmatch.goods.vo.GoodsClickVo;
import com.movie.filmmatch.goods.vo.GoodsVo;
import com.movie.filmmatch.member.vo.MemberVo;

@Service
public interface GoodsClickService {

    /**그룹별 데이터 조회 */
    public Map<String,List<GoodsClickVo>> select_list();

    /**
     * 상품 클릭 조정 메소드
     * @param mem_idx
     * @param goodsVo
     * @return
     */
    public int handle_goods_Click(MemberVo memberVo,GoodsVo goodsVo);


}

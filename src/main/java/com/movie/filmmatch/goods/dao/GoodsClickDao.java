package com.movie.filmmatch.goods.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.movie.filmmatch.goods.vo.GoodsClickVo;

@Mapper
public interface GoodsClickDao {

    /**
     * 리스트 조회
     * @return
     */
 public List<GoodsClickVo> selectList();

 /**
  * 같은 사용자  조회이력유무
  * @param goods_idx
  * @return
  */
 public GoodsClickVo selectOne_goods_click(Map<String,Object> map);


 /**
  * 상품 조회수 정보등록
  * @return
  */
 public int insert_goods_click(GoodsClickVo vo);


 /**
  * 동일유저 동일상품 조회이력 증가
  * @param goods_idx
  * @param mem_idx
  * @return
  */
 public int update_goods_click(Map<String,Object> map);

}

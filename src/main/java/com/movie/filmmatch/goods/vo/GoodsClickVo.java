package com.movie.filmmatch.goods.vo;

import org.apache.ibatis.type.Alias;
import lombok.Data;

/*
 

CREATE TABLE `GoodsClick` (
	`click_idx`	INT auto_increment primary KEY	NOT NULL,
	`goods_idx`	int	NOT NULL,
	`mem_idx`	int 	NOT NULL	 ,
	`cate_id`	int 	NOT NULL,
	`mem_click`	int	NULL,
	`gender`	CHAR(1)	NULL,
	`age_group`	VARCHAR(20)	NULL,
	`click_timestamp`	VARCHAR(255)	NULL
);

*/ 

/**
 * 상품 클릭 데이터 저장
 */
@Data
@Alias("goodsClick")
public class GoodsClickVo {

    private int click_idx;          //클릭 고유번호
    private int goods_idx; 
    private int mem_idx; 
    private String goods_name;
    private int cate_id; 
    private int mem_click;          //회원 클릭수  
    private String gender;          //클릭성별 
    private int age_group;       //나이별 
    private String click_timestamp; // 클릭시간대
    private int is_selling;         // 상품 판매중여부

}

package com.movie.filmmatch.dao.inventory;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.movie.filmmatch.vo.InventoryVo;


@Mapper
public interface Inventory_In_Dao {

	List<InventoryVo> selectList();
	InventoryVo selectOneFromIdx(int idx);
	//default ProductVo selectOneFromName(String name) {return null;}
	
	//CRUD에서 예외가 발생되면??  throws Exception; 해준다.
	int insert(InventoryVo vo) throws Exception;
	int update(InventoryVo vo) throws Exception;
	int delete(int idx) throws Exception;
	
	
	
}

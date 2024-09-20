package com.movie.filmmatch.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.movie.filmmatch.member.vo.EmailVo;

@Mapper
public interface EmailDao {

   public List<EmailVo> searchEmail();
}

package com.example.myproject0.mapper;

import com.example.myproject0.domain.member.Member;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface LoginMapper {

    @Select("""
SELECT * FROM member WHERE userId = #{userID} AND password = #{password}
""")
    Member loginCheckDb(String userID, String password);
}

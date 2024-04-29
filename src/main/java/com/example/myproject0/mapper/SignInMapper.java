package com.example.myproject0.mapper;

import com.example.myproject0.domain.member.Member;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SignInMapper {

    @Insert("""
        INSERT INTO member(userId, password) VALUES (#{userId},#{password})
        """)
     int insertMemberToDb(Member newMember);
}

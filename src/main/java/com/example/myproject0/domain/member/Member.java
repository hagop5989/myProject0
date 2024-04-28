package com.example.myproject0.domain.member;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class Member {
    private Long dbId;
    private String userId;
    private String password;

    public Member(String userId, String password) {
        this.userId = userId;
        this.password = password;
    }
}

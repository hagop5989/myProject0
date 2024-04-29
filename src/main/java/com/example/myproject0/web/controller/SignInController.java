package com.example.myproject0.web.controller;

import com.example.myproject0.mapper.SignInMapper;
import com.example.myproject0.domain.member.Member;
import com.example.myproject0.web.login.SignInForm;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
@Slf4j
public class SignInController {
    private final SignInForm signInForm;
    private final SignInMapper mapper;

    @PostMapping("/login/signIn")
    public String signIn(Member newMember) {
        System.out.println("newMember = " + newMember);
        int rowCount = mapper.insertMemberToDb(newMember);
//        signInForm.memberCreate(user_id,password);
        System.out.println("생성된 Id 개수 = " + rowCount);
        return "redirect:/login";
    }
}

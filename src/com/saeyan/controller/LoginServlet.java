package com.saeyan.controller;

import com.saeyan.dto.MemberDAO;
import com.saeyan.dto.MemberVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String url="member/login.jsp";

        HttpSession session = request.getSession();

        if(session.getAttribute("loginUser")!=null){
            url="main.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String url="member/login.jsp";

        String userid=request.getParameter("userid");
        String pwd=request.getParameter("pwd");

        MemberDAO mDao = MemberDAO.getInstance();
        int result=mDao.userCheck(userid, pwd);

        if(result==1){
            MemberVO mVo=mDao.getMember(userid);
            HttpSession session=request.getSession();
            session.setAttribute("loginUser", mVo);
            request.setAttribute("message", "회원 가입에 성공했습니다.");
            url="main.jsp";
        }else if(result==0){
            request.setAttribute("message", "비밀번호가 맞지 않습니다.");
        } else if (result == -1) {
            request.setAttribute("message", "존재하지 않는 회원입니다.");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request,response);
    }
}

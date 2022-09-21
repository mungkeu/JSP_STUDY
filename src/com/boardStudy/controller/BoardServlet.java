package com.boardStudy.controller;

import com.boardStudy.controller.action.Action;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public BoardServlet(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String command = request.getParameter("command");
        System.out.println("BoardServlet에서 요청을 받음을 확인 : " + command);

        ActionFactory af = ActionFactory.getInstance();
        Action action = af.getAction(command);

        if(action != null){
            action.execute(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // post는 한글이 깨지므로 방지해서 get으로 보내준다.
        doGet(request, response);
    }
}

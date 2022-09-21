package com.boardStudy.controller.action;

import com.boardStudy.dao.BoardDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardDeleteAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String num = request.getParameter("num");

        BoardDAO bDao=BoardDAO.getInstance();
        bDao.deleteBoard(num);

        new BoardListAction().execute(request,response);
    }
}

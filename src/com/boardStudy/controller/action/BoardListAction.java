package com.boardStudy.controller.action;

import com.boardStudy.dao.BoardDAO;
import com.boardStudy.dto.BoardVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BoardListAction implements Action{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/board/boardList.jsp";

        BoardDAO bDao = BoardDAO.getInstance();

        List<BoardVO> boardList = bDao.selectAllBoards();

        request.setAttribute("boardList", boardList);
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}

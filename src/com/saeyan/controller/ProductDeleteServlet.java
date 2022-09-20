package com.saeyan.controller;

import com.saeyan.dao.ProductDAO;
import com.saeyan.dto.ProductVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/productDelete.do")
public class ProductDeleteServlet extends HttpServlet {
    private static final long serialVersionUID=1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");

        ProductDAO pDao = ProductDAO.getInstance();
        ProductVO pVo = pDao.selectProductByCode(code);

        request.setAttribute("product", pVo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/productDelete.jsp");
        dispatcher.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String code = request.getParameter("code");

        ProductDAO pDao = ProductDAO.getInstance();
        pDao.deleteProduct(code);

        response.sendRedirect("productList.do");
    }
}

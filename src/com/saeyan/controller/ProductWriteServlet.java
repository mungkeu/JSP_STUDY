package com.saeyan.controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.saeyan.dao.ProductDAO;
import com.saeyan.dto.ProductVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/productWrite.do")
public class ProductWriteServlet extends HttpServlet {
    private static final long serialVersionUID=1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/productWrite.jsp");
        dispatcher.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");

        ServletContext context = getServletContext();
        String path = context.getRealPath("upload");
        String encType="UTF-8";
        int sizeLimit = 20 * 1024 * 1024; // 업로드 파일의 최대 크기를 20MB로 제한

        // cos라이브러리의 MultipartRequest 클래스 객체가 생성되는 순간 서버로 파일이 업로드된다.
        MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());

        String name = multi.getParameter("name"); // 상품명을 얻어온다.
        int price = Integer.parseInt(multi.getParameter("price")); // 가격을 얻어온다.
        String description = multi.getParameter("description"); // 상품 설명을 얻어온다.
        String pictureUrl = multi.getFilesystemName("pictureUrl"); // 파일의 이름을 얻어온다.

        // VO 객체를 생성해 저장한다.
        ProductVO pVo = new ProductVO();
        pVo.setName(name);
        pVo.setPrice(price);
        pVo.setDescription(description);
        pVo.setPictureUrl(pictureUrl);

        // DB에 해당 내용을 저장한다.
        ProductDAO pDao = ProductDAO.getInstance();
        pDao.insertProduct(pVo);

        // 리스트 페이지로 이동한다.
        response.sendRedirect("productList.do");
    }
}

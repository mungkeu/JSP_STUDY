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

@WebServlet("/productUpdate.do")
public class ProductUpdateServlet extends HttpServlet {
    private static final long serialVersionUID=1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");

        ProductDAO pDao = ProductDAO.getInstance();
        ProductVO pVo = pDao.selectProductByCode(code);

        request.setAttribute("product",pVo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/productUpdate.jsp");
        dispatcher.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");

        ServletContext context = getServletContext();
        String path = context.getRealPath("upload");
        String encType = "UTF-8";
        int sizeLimit = 20 * 1024 * 1024;

        MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());

        String code = multi.getParameter("code");
        String name = multi.getParameter("name"); // 상품명을 얻어온다.
        int price = Integer.parseInt(multi.getParameter("price")); // 가격을 얻어온다.
        String description = multi.getParameter("description"); // 상품 설명을 얻어온다.
        String pictureUrl = multi.getFilesystemName("pictureUrl"); // 파일의 이름을 얻어온다.
        if(pictureUrl==null){
            pictureUrl=multi.getParameter("nonmakeImg");
        }

        // VO 객체를 생성해 저장한다.
        ProductVO pVo = new ProductVO();
        pVo.setCode(Integer.parseInt(code));
        pVo.setName(name);
        pVo.setPrice(price);
        pVo.setDescription(description);
        pVo.setPictureUrl(pictureUrl);

        ProductDAO pDao = ProductDAO.getInstance();
        pDao.updateProduct(pVo);

        response.sendRedirect("productList.do");
    }
}

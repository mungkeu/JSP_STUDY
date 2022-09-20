package com.saeyan.controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/FileUpload/upload2.do")
public class MultiUploadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String savePath = "upload";
        int uploadFileSizeLimit = 5 * 1024 * 1024;
        String encType="UTF-8";

        ServletContext context = getServletContext();
        String uploadFilePath = context.getRealPath(savePath);

        try{
            MultipartRequest multi = new MultipartRequest(
                    request,
                    uploadFilePath,
                    uploadFileSizeLimit,
                    encType,
                    new DefaultFileRenamePolicy()
            );
            Enumeration files = multi.getFileNames();

            // boolean hasMoreElements() : 데이터(element)가 존재한다면 true를 반환하고 없으면 false를 반환한다.
            while(files.hasMoreElements()){
                // E nextElement() : 데이터(element)를 얻어낸다.
                String file = (String) files.nextElement();
                String file_name=multi.getFilesystemName(file);
                // 중복된 파일을 업로드할 경우 파일명이 바뀌므로 번호가 붙기전 원본 파일명을 출력하고자 할때
                // getOriginalFileName() 메서드를 사용한다.
                String ori_file_name = multi.getOriginalFileName(file);
                out.print("<br> 업로드돤 파일명 : " + file_name);
                out.print("<br> 원본 파일명 : " + ori_file_name);
                out.print("<hr>");
            }
        }catch (Exception e){
            System.out.print("예외 발생 : " + e);
        }
    }
}

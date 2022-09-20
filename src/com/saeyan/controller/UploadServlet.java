package com.saeyan.controller;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/FileUpload/upload.do")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        // 여기를 바꿔주면 다운받는 경로가 바뀐다.
        String savePath="upload";
        // 최대 업로드 파일 크기 5MB로 제한
        int uploadFileSizeLimit = 5 * 1024 * 1024;
        String encType = "UTF-8";

        ServletContext context = getServletContext();
        String uploadFilePath = context.getRealPath(savePath);
        System.out.println("서버상의 실제 디렉토리 : ");
        System.out.println(uploadFilePath);

        /*
        * MultipartRequest 생성자의 매개변수
        * - request : MultipartRequest와 연결할 request 객체
        * - saveDirectory : 서버 측에 저장될 경로
        * - maxPostSize : 최대 파일 크기
        * - encoding : 파일의 인코딩 방식 (파일 이름이 한글일 경우 매개 변수 값을 utf-8로 준다.)
        * - policy :  파일 중복 처리를 위한 매개 변수,
        *             policy는 중복 처리를 해주는 매개 변수로서 'b.bmp' 파일을 업로드 하였는데
        *             다시 같은 파일을 업로드 할 경우 'b1.bmp' 등으로 자동으로 파일 중복 처리를 해준다.
        *             매개 변수 값으로는 'new DefaultFileRenamePolicy()'를 사용한다.
        *
        * MultipartRequest 클래스에서 사용하는 유용한 메소드
        * - getParameterNames() : 폼에서 전송된 파라미터의 이름을 Enumeration 타입으로 리턴한다.
        * - getParameterValues() : 폼에서 전송된 파라미터들을 배열로 받아온다.
        * - getParameter() : 객체에 있는 해당 파라미터의 값을 가져온다.
        * - getFileNames() : 파일을 여러 개 업로드 할 경우 그 값들을 Enumeration 타입으로 리턴한다.
        * - getFilesystemName() : 서버에 실제로 업로드 된 파일의 이름을 의미한다.
        * - getOriginalFileName() : 클라이언트가 업로드한 파일의 원본 이름을 의미한다.
        * - getContentType() : 업로드 파일의 컨텐트 타입을 얻을 때 사용한다.
        * - getFile() : 서버에 업로드 된 파일의 정보를 객체로 얻어낼 때 사용한다.
        */
        try{
            MultipartRequest multi = new MultipartRequest(
                    request, // request 객체
                    uploadFilePath, // 서버상의 실제 디렉토리
                    uploadFileSizeLimit, // 최대 업로드 파일 크기
                    encType, // 인코딩 방법
                    // 동일한 이름이 존재하면 새로운 이름이 부여된다.
                    new DefaultFileRenamePolicy());

            // 업로드된 파일의 이름 얻기
            String fileName = multi.getFilesystemName("uploadFile");

            if(fileName == null){
                System.out.println("파일 업로드 되지 않았음.");
            } else{ // 파일이 업로드 되었을 때
                out.println("<br> 글쓴이 : " + multi.getParameter("name"));
                out.println("<br> 제&nbsp;목 : " + multi.getParameter("title"));
                out.println("<br> 파일명 : " + fileName);
            }
        }catch (Exception e){
            System.out.print("예외 발생 : " + e);
        }
    }
}

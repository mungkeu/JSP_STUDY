package com.saeyan.dao;

import com.saeyan.dto.ProductVO;
import com.saeyan.util.DBManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private ProductDAO(){}
    private static ProductDAO instance = new ProductDAO();
    public static ProductDAO getInstance(){return instance;}

    // c Read u d
    public List<ProductVO> selectAllProducts(){
        String sql = "select * from product order by code desc";
        List<ProductVO> list = new ArrayList<>();
        try{
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()){
                ProductVO pVo = new ProductVO();
                pVo.setCode(rs.getInt("code"));
                pVo.setName(rs.getString("name"));
                pVo.setPrice(rs.getInt("price"));
                pVo.setPictureUrl(rs.getString("pictureUrl"));
                pVo.setDescription(rs.getString("description"));
                list.add(pVo);
            }
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        return list;
    }

    // Create r u d
    public void insertProduct(ProductVO pVo){
        String sql = "insert into product values(product_seq.nextval,?,?,?,?)";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try{
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, pVo.getName());
            pstmt.setInt(2, pVo.getPrice());
            pstmt.setString(3, pVo.getPictureUrl());
            pstmt.setString(4, pVo.getDescription());
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBManager.close(conn,pstmt);
        }
    }

    // c Read u d , 하나의 상품을 반환하는 메서드
    public ProductVO selectProductByCode(String code){
        String sql = "select * from product where code=?";
        ProductVO pVo = null;

        try{
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,code);
            rs = pstmt.executeQuery();
            while(rs.next()){
                pVo = new ProductVO();
                pVo.setCode(rs.getInt("code"));
                pVo.setName(rs.getString("name"));
                pVo.setPrice(rs.getInt("price"));
                pVo.setPictureUrl(rs.getString("pictureUrl"));
                pVo.setDescription(rs.getString("description"));
            }
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        return pVo;
    }

    // c r Update d
    public void updateProduct(ProductVO pVo){
        String sql = "update product set name=?,price=?,pictureurl=?,description=? where code=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try{
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, pVo.getName());
            pstmt.setInt(2, pVo.getPrice());
            pstmt.setString(3, pVo.getPictureUrl());
            pstmt.setString(4, pVo.getDescription());
            pstmt.setInt(5, pVo.getCode());
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBManager.close(conn,pstmt);
        }
    }

    public void deleteProduct(String code){
        String sql = "delete product where code=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try{
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,code);
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBManager.close(conn, pstmt);
        }
    }
}

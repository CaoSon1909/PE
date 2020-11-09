/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sonpc.tblUser;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;
import sonpc.utils.DBHelpers;

/**
 *
 * @author ACER
 */
public class TblUserDAO implements Serializable{
    
    public boolean checkLogin(String userId, String password) throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = DBHelpers.makeConnection();
            if (con != null){
                String sql = "Select fullName, isManager From tbl_User Where userId = ? and password = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, userId);
                ps.setString(2, password);
                rs = ps.executeQuery();
                if (rs.next()){
                    return true;
                }
            }
        }
        finally{
            if (ps != null){
                ps.close();
            }
            if (con != null){
                con.close();
            }
        }
        return false;
    }
    
    public String getFullName(String userId) throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = DBHelpers.makeConnection();
            if (con != null){
                String sql = "Select fullName From tbl_User Where userId = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, userId);
                rs = ps.executeQuery();
                if (rs.next()){
                    String fullName = rs.getString("fullName");
                    
                }
            }
        }
        finally{
            if (ps != null){
                ps.close();
            }
            if (con != null){
                con.close();
            }
        }
    }
    
}

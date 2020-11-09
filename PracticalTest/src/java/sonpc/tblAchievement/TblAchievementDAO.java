/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sonpc.tblAchievement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.naming.NamingException;
import sonpc.utils.DBHelpers;

/**
 *
 * @author ACER
 */
public class TblAchievementDAO {
    
     public boolean insertClubAchievement(String clubId, int year, String type) throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement ps = null;
        
        try{
            con = DBHelpers.makeConnection();
            if (con != null){
                String sql = "Insert Into tbl_Achivement (year, typeOfChampion, clubid) Values (?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setInt(1, year);
                ps.setString(2, type);
                ps.setString(3, clubId);
                int row = ps.executeUpdate();
                if (row > 0){
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
}

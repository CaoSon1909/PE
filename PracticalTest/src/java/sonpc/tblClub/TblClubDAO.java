/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sonpc.tblClub;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;
import javax.naming.NamingException;
import sonpc.utils.DBHelpers;

/**
 *
 * @author ACER
 */
public class TblClubDAO implements Serializable{
    
    public int searchClubChampionship(int number) throws SQLException, NamingException{
        List<TblClubDTO> list = searchClubs(number);
        if (list != null){
            return list.size();
        }
        return 0;
    }
    
    public List<TblClubDTO> searchClubs(String noOfChamp) throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<TblClubDTO> list = null;
        try{
            con = DBHelpers.makeConnection();
            if (con != null){
                String sql = "Select id ,clubName, noOfChampion, country, status From tbl_Club Where noOfChampion = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, noOfChamp);
                rs = ps.executeQuery();
                while(rs.next()){
                    if (list == null){
                        list = new Vector<>();
                    }
                    String id = rs.getString("id");
                    String clubName = rs.getString("clubName");
                    String noOfChampion = rs.getString("noOfChampion");
                    String country = rs.getString("country");
                    boolean status = rs.getBoolean("status");
                    
                    TblClubDTO dto = new TblClubDTO(id, clubName, noOfChampion, country, status);
                    
                    list.add(dto);
                }
                return list;
            }
        }
        finally{
            if (ps != null){
                ps.close();
            }
            if (con != null){
                ps.close();
            }
        }
        return null;
    }
    
}

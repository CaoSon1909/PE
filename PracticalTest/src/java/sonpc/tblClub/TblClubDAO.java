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
import java.util.List;

/**
 *
 * @author ACER
 */
public class TblClubDAO implements Serializable{
    
    public int searchClubChampionship(int number){
        return 0;
    }
    
    public List<TblClubDTO> searchClubs(){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<TblClubDTO> list = null;
        
    }
    
}

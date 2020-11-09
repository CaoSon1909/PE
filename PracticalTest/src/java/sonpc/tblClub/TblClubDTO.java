/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sonpc.tblClub;

import java.io.Serializable;

/**
 *
 * @author ACER
 */
public class TblClubDTO implements Serializable{
    
    private String id;
    private String clubName;
    private String noOfChampion;
    private String country;
    private boolean status;

    public TblClubDTO() {
    }

    public TblClubDTO(String id, String clubName, String noOfChampion, String country, boolean status) {
        this.id = id;
        this.clubName = clubName;
        this.noOfChampion = noOfChampion;
        this.country = country;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getNoOfChampion() {
        return noOfChampion;
    }

    public void setNoOfChampion(String noOfChampion) {
        this.noOfChampion = noOfChampion;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
    

    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sonpc.tblAchievement;

import java.io.Serializable;

/**
 *
 * @author ACER
 */
public class TblAchievementDTO implements Serializable {

    private int id;
    private int year;
    private String typeOfChampion;
    private String clubId;

    public TblAchievementDTO() {
    }

    public TblAchievementDTO(int id, int year, String typeOfChampion, String clubId) {
        this.id = id;
        this.year = year;
        this.typeOfChampion = typeOfChampion;
        this.clubId = clubId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getTypeOfChampion() {
        return typeOfChampion;
    }

    public void setTypeOfChampion(String typeOfChampion) {
        this.typeOfChampion = typeOfChampion;
    }

    public String getClubId() {
        return clubId;
    }

    public void setClubId(String clubId) {
        this.clubId = clubId;
    }

}

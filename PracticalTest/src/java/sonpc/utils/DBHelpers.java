/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sonpc.utils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLXML;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author ACER
 */
public class DBHelpers implements Serializable{
    public static Connection makeConnection() throws NamingException, SQLException{
        Context ctx = new InitialContext();
        Context envCtx = (Context) ctx.lookup("java:comp/env");
        DataSource ds = (DataSource) envCtx.lookup("DBCon");
        Connection con = ds.getConnection();
        return con;
    }      
}

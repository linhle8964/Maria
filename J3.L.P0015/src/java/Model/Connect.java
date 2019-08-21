/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author duydnse04661
 */
public class Connect {

    /**
     * this method use to Connect from java to database
     *
     * @return Connection
     * @throws Exception
     */
    
    String serverName;
    String portNumber;
    String dbName;
    String UserAcc;
    String passWord;
    
    public Connect(){
        try {
            InitialContext intContext = new InitialContext();
            Context evnContext = (Context) intContext.lookup("java:comp/env");
            this.serverName = (String) evnContext.lookup("local");
            this.portNumber = (String) evnContext.lookup("portNumber");
            this.dbName = (String) evnContext.lookup("dbName");
            this.UserAcc = (String) evnContext.lookup("userAcc");
            this.passWord = (String) evnContext.lookup("passWord");
        } catch (NamingException ex) {
            Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Connection getConnection() throws Exception {
        Connection con = null;
        try {
            String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").getInterfaces();
            con = DriverManager.getConnection(url, UserAcc, passWord);
        } catch (Exception e) {
            throw e;
        }
        return con;
    }

}

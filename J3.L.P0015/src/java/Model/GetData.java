/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Cake;
import Entity.FindCafe;
import Entity.InforHome;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;

/**
 *
 * @author duydnse04661
 */
public class GetData {

    /**
     * this method use to handle to connect
     *
     * @param con
     * @param rs
     * @param ps
     * @throws Exception
     */
    public void CloseConnection(Connection con, ResultSet rs, PreparedStatement ps) throws Exception {
        try {
            if (rs != null && !rs.isClosed()) {
                rs.close();
            }
            if (ps != null && !ps.isClosed()) {
                ps.close();
            }
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (Exception e) {
            throw e;
        }
    }

    /**
     * this method use to get link image from file context
     *
     * @return link image @throws Exception
     */
    public String getLinkImage() throws Exception {
        String returnLink = "";
        try {
            InitialContext intContext = new InitialContext();
            Context evnContext = (Context) intContext.lookup("java:comp/env");
            returnLink = (String) evnContext.lookup("imageLink");
        } catch (Exception e) {
            throw e;
        }
        return returnLink;
    }

    /**
     * this method use to get total page
     *
     * @return total page @throws Exception
     */
    public int getTotalPages() throws Exception {
        int totalPage = 0;
        int totalRecord = 0;
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            String squery = "select count(*) as TotalRecord from Cake";
            Connect abc = new Connect();
            con = abc.getConnection();
            ps = con.prepareStatement(squery);
            rs = ps.executeQuery();
            while (rs.next()) {
                totalRecord = rs.getInt("TotalRecord");
            }
            if (totalRecord % 3 != 0) {
                totalPage = (totalRecord / 3) + 1;
            } else {
                totalPage = totalRecord / 3;
            }
            CloseConnection(con, rs, ps);
            return totalPage;
        } catch (Exception e) {
            CloseConnection(con, rs, ps);
            throw e;
        }
    }

    /**
     * this method use to get data list for each pagination
     *
     * @param currentPage
     * @return
     * @throws Exception
     */
    public ArrayList<Cake> getDataList(int currentPage) throws Exception {
        int totalPage = 0;
        int totalRecord = 0;
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        ArrayList<Cake> returnList = new ArrayList<>();
        String localPicture = getLinkImage();
        int stat = (currentPage - 1) * 3 + 1;
        int end = stat + 2;
        Cake ca;
        try {
            String sQuery = "SELECT * from (SELECT ROW_NUMBER() "
                    + "OVER(order by(id)ASC)RN, * FROM Cake) a where a.RN between ? and ?";
            Connect dbc = new Connect();
            con = dbc.getConnection();
            ps = con.prepareStatement(sQuery);
            ps.setInt(1, stat);
            ps.setInt(2, end);
            rs = ps.executeQuery();
            String picture = "";
            while (rs.next()) {
                picture = localPicture + rs.getString("picture");
                int id = rs.getInt("id");
                String title = rs.getString("Title");
                float price = rs.getFloat("price");
                String sortContent = rs.getString("sortContent");
                String content = rs.getString("Content");
                ca = new Cake(id, title, price, sortContent, content, picture);
                returnList.add(ca);
            }
            CloseConnection(con, rs, ps);
            return returnList;
        } catch (Exception e) {
            CloseConnection(con, rs, ps);
            throw e;
        }
    }

    /**
     * this method use to load data for home page
     *
     * @return @throws Exception
     */
    public InforHome getInforHomePage() throws Exception {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        String localPicture = getLinkImage();
        InforHome bl = null;
        try {
            String sQuery = "SELECT * FROM HomePage";
            Connect dbc = new Connect();
            con = dbc.getConnection();
            ps = con.prepareStatement(sQuery);
            rs = ps.executeQuery();
            String picture = "";
            while (rs.next()) {
                picture = localPicture + rs.getString("picture");
                String title = rs.getString("Title");
                String context = rs.getString("context");
                String sign1 = rs.getString("sign1");
                String sign2 = rs.getString("sign2");
                bl = new InforHome(title, context, picture, sign1, sign2);
            }
            CloseConnection(con, rs, ps);
            return bl;
        } catch (Exception e) {
            CloseConnection(con, rs, ps);
            throw e;
        }
    }

    /**
     * this method use to load 2 cake for home page
     *
     * @return @throws Exception
     */
    public ArrayList<Cake> getListCake() throws Exception {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        String localPicture = getLinkImage();
        Cake ca = null;
        ArrayList<Cake> arr = new ArrayList<>();
        try {
            String sQuery = "SELECT TOP 2 * FROM Cake";
            Connect dbc = new Connect();
            con = dbc.getConnection();
            ps = con.prepareStatement(sQuery);
            rs = ps.executeQuery();
            String picture = "";
            while (rs.next()) {
                picture = localPicture + rs.getString("picture");
                int id = rs.getInt("id");
                String title = rs.getString("Title");
                float price = rs.getFloat("price");
                String sortContent = rs.getString("sortContent");
                String content = rs.getString("Content");
                ca = new Cake(id, title, price, sortContent, content, picture);
                arr.add(ca);
            }
            CloseConnection(con, rs, ps);
            return arr;
        } catch (Exception e) {
            CloseConnection(con, rs, ps);
            throw e;
        }
    }

    /**
     * this method use to get data for Find Page
     *
     * @return @throws Exception
     */
    public FindCafe getInfoFindPage() throws Exception {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        String localPicture = getLinkImage();
        FindCafe bl = null;
        String picture = "";
        try {
            String sQuery = "SELECT * FROM FindCafe";
            Connect dbc = new Connect();
            con = dbc.getConnection();
            ps = con.prepareStatement(sQuery);
            rs = ps.executeQuery();
            while (rs.next()) {
                picture = localPicture + rs.getString("pictureMap");
                String address = rs.getString("addres");
                int tel = rs.getInt("tel");
                String email = rs.getString("email");
                String close = rs.getString("closed");
                String op1 = rs.getString("opened1");
                String op2 = rs.getString("opened2");
                bl = new FindCafe(address, tel, email, close, op1, op2, picture);
            }
            CloseConnection(con, rs, ps);
            return bl;
        } catch (Exception e) {
            CloseConnection(con, rs, ps);
            throw e;
        }
    }

    /**
     * this method use to get cake by ID for Detail Blog
     *
     * @param ID
     * @return
     * @throws Exception
     */
    public Cake getCakebyID(int ID) throws Exception {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        String localPicture = getLinkImage();
        Cake ca = null;
        String picture = "";
        try {
            String sQuery = "SELECT * FROM Cake WHERE id = ?";
            Connect dbc = new Connect();
            con = dbc.getConnection();
            ps = con.prepareStatement(sQuery);
            ps.setInt(1, ID);
            rs = ps.executeQuery();
            while (rs.next()) {
                picture = localPicture + rs.getString("picture");
                int id = rs.getInt("id");
                String title = rs.getString("Title");
                float price = rs.getFloat("price");
                String sortContent = rs.getString("sortContent");
                String content = rs.getString("Content");
                ca = new Cake(id, title, price, sortContent, content, picture);
            }
            CloseConnection(con, rs, ps);
            return ca;
        } catch (Exception e) {
            CloseConnection(con, rs, ps);
            throw e;
        }
    }
}

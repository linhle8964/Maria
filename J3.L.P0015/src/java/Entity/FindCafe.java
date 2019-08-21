/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author duydnse04661
 */
public class FindCafe {
    private String address;
    private int telephone;
    private String email;
    private String Closed;
    private String Opended1;
    private String Opended2;
    private String map;

    public FindCafe(String address, int telephone, String email, String Closed, String Opended1, String Opended2, String map) {
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        this.Closed = Closed;
        this.Opended1 = Opended1;
        this.Opended2 = Opended2;
        this.map = map;
    }

    public String getAddress() {
        return address;
    }

    public int getTelephone() {
        return telephone;
    }

    public String getEmail() {
        return email;
    }

    public String getClosed() {
        return Closed;
    }

    public String getOpended1() {
        return Opended1;
    }

    public String getOpended2() {
        return Opended2;
    }

    public String getMap() {
        return map;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setClosed(String Closed) {
        this.Closed = Closed;
    }

    public void setOpended1(String Opended1) {
        this.Opended1 = Opended1;
    }

    public void setOpended2(String Opended2) {
        this.Opended2 = Opended2;
    }

    public void setMap(String map) {
        this.map = map;
    }
    
}

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
public class InforHome {
    private String title;
    private String content;
    private String picture;
    private String sign1;
    private String sign2;

    public InforHome(String title, String content, String picture, String sign1, String sign2) {
        this.title = title;
        this.content = content;
        this.picture = picture;
        this.sign1 = sign1;
        this.sign2 = sign2;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getPicture() {
        return picture;
    }

    public String getSign1() {
        return sign1;
    }

    public String getSign2() {
        return sign2;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public void setSign1(String sign1) {
        this.sign1 = sign1;
    }

    public void setSign2(String sign2) {
        this.sign2 = sign2;
    }
    
}

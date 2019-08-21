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
public class Cake {
    private int id;
    private String title;
    private float price;
    private String sortContent;
    private String content;
    private String picture;

    public Cake(int id, String title, float price, String sortContent, String content, String picture) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.sortContent = sortContent;
        this.content = content;
        this.picture = picture;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public float getPrice() {
        return price;
    }

    public String getSortContent() {
        return sortContent;
    }

    public String getContent() {
        return content;
    }

    public String getPicture() {
        return picture;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setSortContent(String sortContent) {
        this.sortContent = sortContent;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
    
}

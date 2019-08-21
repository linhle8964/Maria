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
public class NumberPagination {
    private int type;
    private String number;

    public NumberPagination(int type, String number) {
        this.type = type;
        this.number = number;
    }

    public int getType() {
        return type;
    }

    public String getNumber() {
        return number;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setNumber(String number) {
        this.number = number;
    }
    
}

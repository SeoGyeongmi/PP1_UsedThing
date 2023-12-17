package com.example.board;

import org.springframework.stereotype.Component;

import java.util.Date;

public class BoardVO {


    private int itemID;
    private String sellerName;
    private String itemName;
    private int price;
    private String condi;
    private String content;
    private String howToSell;
    private String phone;
    private Date RegDate;
    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCondi() {
        return condi;
    }

    public void setCondi(String condi) {
        this.condi = condi;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getHowToSell() {
        return howToSell;
    }

    public void setHowToSell(String howToSell) {
        this.howToSell = howToSell;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setRegDate(Date regDate) {
        RegDate = regDate;
    }



}

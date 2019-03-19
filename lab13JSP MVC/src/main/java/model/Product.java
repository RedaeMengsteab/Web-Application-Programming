package model;

import java.time.LocalDate;

public class Product {
    private String no;
    private int test;
    private String name;
    private String desc;
    private String type;
    LocalDate date;
    public Product(String name, String no, int test, String type, String desc) {
        this.no = no;
        this.test = test;
        this.name = name;
        this.type = type;
        this.desc = desc;
        this.date = LocalDate.now();
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public int getTest() {
        return test;
    }

    public void setTest(int test) {
        this.test = test;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }
}


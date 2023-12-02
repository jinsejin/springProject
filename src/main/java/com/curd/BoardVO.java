package com.curd;
import  java.util.Date;
public class BoardVO {

    private int seq;
    private String category;
    private String title;
    private String writer;
    private String content;
    private Date regdate;
    private String gender;
    private String age;
    private String id;
    private String password;
    private int cnt;

    //getter and setter
    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getWriter() {
        return writer;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public Date getRegdate() {
        return regdate;
    }
    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    //new data
    public String getGender() { return gender; }
    public void setGender(String gender ) { this.gender = gender; }
    public String getAge(){ return age; }
    public void setAge(String age) { this.age = age; }
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    @Override
    public String toString() {
        return "BoardVO{" +
                "seq=" + seq +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", regdate=" + regdate +
                ", gender = " + gender +
                ", age = " + age +
                ", id = " + id +
                ", password = " + password +
                '}';
    }
}
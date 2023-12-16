package com.example;

import java.util.Date;

public class BoardVO {

    private int seq; // index
    private String title; // 나라 이름
    private String writer; // 금메달 개수
    private String content2; // 은메달 개수
    private int letters; // 동메달 개수
    private String content; // 나라 정보
    private int total; // 메달 개수
    private Date regdate; // 작성 날짜

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String gettitle() {
        return title;
    }

    public void settitle(String title) {
        this.title = title;
    }

    public String getwriter() {
        return writer;
    }

    public void setwriter(String writer) {
        this.writer = writer;
    }

    public String getcontent2() {
        return content2;
    }

    public void setcontent2(String content2) {
        this.content2 = content2;
    }

    public int getletters() {
        return letters;
    }

    public void setletters(int letters) {
        this.letters = letters;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
}
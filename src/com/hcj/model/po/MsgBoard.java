package com.hcj.model.po;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Moy on 五月29  029.
 */
@Entity
@Table(name = "guestbook")
public class MsgBoard {

    @Id
    @GeneratedValue()
    private Integer ID;
    @NotNull
    @Column(length=20, nullable = false)
    private String NAME;
    @Column(length=20)
    private String PHONE;
    @Column(length=40)
    private String EMAIL;
    @NotNull
    @Column(length=80, nullable = false)
    private String TITLE;
    @Column(length=2000)
    private String CONTENT;
    @Column
    private Timestamp CREATED_TIME;
    @Transient
    private Integer num; // 页码
    @Transient
    private Integer size; // 每页最多显示条数

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getID() {
        return ID;
    }

    public void setID(Integer ID) {
        this.ID = ID;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public String getPHONE() {
        return PHONE;
    }

    public void setPHONE(String PHONE) {
        this.PHONE = PHONE;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public String getTITLE() {
        return TITLE;
    }

    public void setTITLE(String TITLE) {
        this.TITLE = TITLE;
    }

    public String getCONTENT() {
        return CONTENT;
    }

    public void setCONTENT(String CONTENT) {
        this.CONTENT = CONTENT;
    }

    public Timestamp getCREATED_TIME() {
        return CREATED_TIME;
    }

    public void setCREATED_TIME(Timestamp CREATED_TIME) {
        this.CREATED_TIME = CREATED_TIME;
    }

    @Override
    public String toString() {
        return "MsgBoard{" +
                "ID=" + ID +
                ", NAME='" + NAME + '\'' +
                ", PHONE='" + PHONE + '\'' +
                ", EMAIL='" + EMAIL + '\'' +
                ", TITLE='" + TITLE + '\'' +
                ", CONTENT='" + CONTENT + '\'' +
                ", CREATED_TIME=" + CREATED_TIME +
                '}';
    }
}

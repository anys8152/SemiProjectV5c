package anys.spring.mvc.vo;

import java.io.Serializable;

// 액션태그에 사용할 자바빈즈 클래스
public class PdsVO implements Serializable {

    private String pno;
    private String title;
    private String userid;
    private String regdate;
    private String thumbup;
    private String views;
    private String contents;

    private String fname;
    private String fsize;
    private String fdown;
    private String ftype;

    public PdsVO() {
    }

    public PdsVO(String pno, String title, String userid, String regdate, String thumbup, String views, String contents, String fname, String fsize, String fdown, String ftype) {
        this.pno = pno;
        this.title = title;
        this.userid = userid;
        this.regdate = regdate;
        this.thumbup = thumbup;
        this.views = views;
        this.contents = contents;
        this.fname = fname;
        this.fsize = fsize;
        this.fdown = fdown;
        this.ftype = ftype;
    }

    public String getPno() {
        return pno;
    }

    public void setPno(String pno) {
        this.pno = pno;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public String getThumbup() {
        return thumbup;
    }

    public void setThumbup(String thumbup) {
        this.thumbup = thumbup;
    }

    public String getViews() {
        return views;
    }

    public void setViews(String views) {
        this.views = views;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFsize() {
        return fsize;
    }

    public void setFsize(String fsize) {
        this.fsize = fsize;
    }

    public String getFdown() {
        return fdown;
    }

    public void setFdown(String fdown) {
        this.fdown = fdown;
    }

    public String getFtype() {
        return ftype;
    }

    public void setFtype(String ftype) {
        this.ftype = ftype;
    }
}

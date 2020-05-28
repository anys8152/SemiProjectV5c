package anys.spring.mvc.vo;

import java.io.Serializable;

// 액션태그에 사용할 자바빈즈 클래스
public class BoardVO implements Serializable {

    private String bno;
    private String title;
    private String userid;
    private String regdate;
    private String thumbup;
    private String views;
    private String contents;

    public BoardVO() {
    }

    public BoardVO(String bno, String title, String userid, String regdate, String thumbup, String views, String contents) {
        this.bno = bno;
        this.title = title;
        this.userid = userid;
        this.regdate = regdate;
        this.thumbup = thumbup;
        this.views = views;
        this.contents = contents;
    }

    public String getBno() {
        return bno;
    }

    public void setBno(String bno) {
        this.bno = bno;
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

}

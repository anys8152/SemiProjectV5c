package anys.spring.mvc.vo;

public class GalleryVO {

    private String gno;
    private String title;
    private String userid;
    private String regdate;
    private String thumbup;
    private String views;
    private String contents;
    private String fname1;
    private String fname2;
    private String fname3;

    public GalleryVO() {
    }

    public GalleryVO(String gno, String title, String userid, String regdate, String thumbup, String views, String contents, String fname1, String fname2, String fname3) {
        this.gno = gno;
        this.title = title;
        this.userid = userid;
        this.regdate = regdate;
        this.thumbup = thumbup;
        this.views = views;
        this.contents = contents;
        this.fname1 = fname1;
        this.fname2 = fname2;
        this.fname3 = fname3;
    }

    public String getGno() {
        return gno;
    }

    public void setGno(String gno) {
        this.gno = gno;
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

    public String getFname1() {
        return fname1;
    }

    public void setFname1(String fname1) {
        this.fname1 = fname1;
    }

    public String getFname2() {
        return fname2;
    }

    public void setFname2(String fname2) {
        this.fname2 = fname2;
    }

    public String getFname3() {
        return fname3;
    }

    public void setFname3(String fname3) {
        this.fname3 = fname3;
    }
};
package anys.spring.mvc.vo;

public class ReplyVO {

    private String rno;
    private String reply;
    private String userid;
    private String regdate;
    private String thumbup;
    private String bno;
    private String refno;

    public ReplyVO() {
    }

    public ReplyVO(String rno, String reply, String userid, String regdate, String thumbup, String bno, String refno) {
        this.rno = rno;
        this.reply = reply;
        this.userid = userid;
        this.regdate = regdate;
        this.thumbup = thumbup;
        this.bno = bno;
        this.refno = refno;
    }

    public String getRno() {
        return rno;
    }

    public void setRno(String rno) {
        this.rno = rno;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
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

    public String getBno() {
        return bno;
    }

    public void setBno(String bno) {
        this.bno = bno;
    }

    public String getRefno() {
        return refno;
    }

    public void setRefno(String refno) {
        this.refno = refno;
    }
};
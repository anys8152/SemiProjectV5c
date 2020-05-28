package anys.spring.mvc.vo;

// 회원정보 저장 클래스
public class MemberVO {
    private String mno;
    private String name;
    private String jumin;
    private String jumin1;
    private String jumin2;

    private String userid;
    private String uid;

    private String passwd;
    private String pwd;

    private String zipcode;
    private String zip1;
    private String zip2;

    private String addr1;
    private String addr2;
    private String email;
    private String email1;
    private String email2;

    private String mobile;
    private String hp1;
    private String hp2;
    private String hp3;

    private String regdate;

    public MemberVO() {
    }

    public MemberVO(String mno, String name, String jumin, String userid, String passwd, String zipcode, String addr1, String addr2, String email, String mobile, String regdate) {
        this.mno = mno;
        this.name = name;
        this.jumin = jumin;
        this.userid = userid;
        this.passwd = passwd;
        this.zipcode = zipcode;
        this.addr1 = addr1;
        this.addr2 = addr2;
        this.email = email;
        this.mobile = mobile;
        this.regdate = regdate;
    }

    public String getMno() {
        return mno;
    }

    public void setMno(String mno) {
        this.mno = mno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJumin() {
        return jumin;
    }

    public void setJumin(String jumin) {
        this.jumin = jumin;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getAddr1() {
        return addr1;
    }

    public void setAddr1(String addr1) {
        this.addr1 = addr1;
    }

    public String getAddr2() {
        return addr2;
    }

    public void setAddr2(String addr2) {
        this.addr2 = addr2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public String getJumin1() {
        return jumin1;
    }

    public void setJumin1(String jumin1) {
        this.jumin1 = jumin1;
    }

    public String getJumin2() {
        return jumin2;
    }

    public void setJumin2(String jumin2) {
        this.jumin2 = jumin2;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getZip1() {
        return zip1;
    }

    public void setZip1(String zip1) {
        this.zip1 = zip1;
    }

    public String getZip2() {
        return zip2;
    }

    public void setZip2(String zip2) {
        this.zip2 = zip2;
    }

    public String getEmail1() {
        return email1;
    }

    public void setEmail1(String email1) {
        this.email1 = email1;
    }

    public String getEmail2() {
        return email2;
    }

    public void setEmail2(String email2) {
        this.email2 = email2;
    }

    public String getHp1() {
        return hp1;
    }

    public void setHp1(String hp1) {
        this.hp1 = hp1;
    }

    public String getHp2() {
        return hp2;
    }

    public void setHp2(String hp2) {
        this.hp2 = hp2;
    }

    public String getHp3() {
        return hp3;
    }

    public void setHp3(String hp3) {
        this.hp3 = hp3;
    }
}

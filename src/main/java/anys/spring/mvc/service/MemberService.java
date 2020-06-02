package anys.spring.mvc.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import anys.spring.mvc.dao.MemberDAO;
import anys.spring.mvc.vo.MemberVO;

@Service("msrv")
public class MemberService {

    private MemberDAO mdao = null;

    @Autowired
    public MemberService(MemberDAO mdao) {
        this.mdao = mdao;
    }

    // 새로운 회원을 테이블에 저장함
    public String newMember(MemberVO m) {
        String result = "회원가입 실패!!";

        // 여러개로 나뉘어진 변수들을 하나로 합침
        m.setUserid( m.getUid() );
        m.setPasswd( m.getPwd() );
        m.setJumin( m.getJumin1() + "-" + m.getJumin2() );
        m.setZipcode( m.getZip1() + "-" + m.getZip2() );
        m.setEmail( m.getEmail1() + "@" + m.getEmail2() );
        m.setMobile( m.getHp1() + "-" + m.getHp2() + "-" + m.getHp3() );

        if (mdao.insertMember(m))
            result = "회원가입 성공!!";

        System.out.println(result);  // 가입여부 확인용

        return result;
    }

    // 동이름으로 우편번호 검색
    public String findZipcode(String dong){
        // 123-456 서울, 종로구, 창신동, 987-456번지

       /* StringBuilder sb = new StringBuilder();
        sb.append("123-456").append(",")
                .append("서울").append(",")
                .append("종로구").append(",")
                .append("창신동").append(",")
                .append("987-456번지");

        return sb.toString();
        */

        /*
         {zip:"123-456", sido: "서울",
         gugun:"종로구", dong:"창신동",
         bunji:"987-456번지" }
         */
        /*
        StringBuilder sb = new StringBuilder();
        sb.append("{zio:\"123-456\",")
                .append("sido:\"서울\",")
                .append("gugun:\"종로구\",")
                .append("dong:\"창신동\",")
                .append("bunji:\"987-456번지\" }");
        return sb.toString();
        */

        // JSON : Javascript Object Notation
        // 자바스크림트 객체 표기법
        // 데이터 교환에 사용하는 경량급 데이터 형식
        // 사람이 읽기 쉽고, 기계가 분석하기도 쉬워
        // 데이터 교환에 오랫동안 사용했던 XML을 대체하고 있음

        // JSON 데이터는 이름/값으로 구성
        // 각각의 데이터는 ,로 구분
        // 하나의 객체는 {}로 정의,
        // 여러 객체들은 []로 정의

        // ObjectMapper 라이브러리를 이용하면
        // 손쉽게 JSON 유형의 데이터를 생성할 수 있음

        ObjectMapper mapper = new ObjectMapper();
        String json = "";

        try{
            json = mapper.writeValueAsString(
                    mdao.selectZipcode(dong));
            // 검색한 주소데이터를 json 형식으로 변환

        } catch (Exception ex){
            ex.printStackTrace();
        }
        return json;
    }
}

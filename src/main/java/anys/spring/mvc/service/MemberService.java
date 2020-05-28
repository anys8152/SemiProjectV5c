package anys.spring.mvc.service;

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

}

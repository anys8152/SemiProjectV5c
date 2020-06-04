package anys.spring.mvc.service;

import anys.spring.mvc.dao.LoginDAO;
import anys.spring.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service("lsrv")
public class LoginService {

    private LoginDAO ldao;

    @Autowired
    public LoginService(LoginDAO ldao) {
        this.ldao = ldao;
    }

    // 로그인 체크
    public boolean ckeckLogin(MemberVO mvo, HttpSession sess) {

        boolean isLogin = false;

        // 로그인 성공시 회원정보(아이디)를 세션에 저장
        if(ldao.selectLogin(mvo) > 0){
            sess.setAttribute("UID", mvo.getUserid());

            isLogin = true;
        }

        return isLogin;
    }
};
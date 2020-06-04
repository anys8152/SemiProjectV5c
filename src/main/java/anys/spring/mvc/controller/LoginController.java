package anys.spring.mvc.controller;

import anys.spring.mvc.service.LoginService;
import anys.spring.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    private LoginService lsrv;

    @Autowired
    public LoginController(LoginService lsrv) {
        this.lsrv = lsrv;
    }

    // 로그인 체크 기능
    // 입력한 아이디/비밀번호로 로그인 가능 여부 확인
    // 로그인 성공시 로그인 여부를 시스템에 저장하기 위해
    // HttpSession 객체를 이용함
    // 즉, 서버가 생성한 정보를 일정기간 동안
    // WAS에 저장해두고 필요할때 마다 이것 활용함으로써
    // 로그인한 사용자를 식별할 수 있음.
    @PostMapping(value = "/login/login")
    public String login(MemberVO mvo, HttpSession sess) {

        String returnPage = "redirect:/login/fail";

        if(lsrv.ckeckLogin(mvo, sess)){   // 로그인 성공시
            returnPage = "redirect:/index";

        }
        return returnPage;
    }

    // 로그아웃
    // 로그인 성공시 로그인 여부를 세션객체로 만들어 두었지만
    // 로그아웃시에는 이 세션객체를 지워버리면 됨.
    @RequestMapping(value = "/login/logout", method = RequestMethod.GET)
    public String logout(HttpSession sess) {

        // 세션에 있는 모든 데이터를 제거함
        sess.invalidate();

        return "redirect:/index";
    }

    // 로그인 실패 또는 로그인이 필요한 페이지에 무단으로 접근했을시
    @RequestMapping(value = "/login/fail", method = RequestMethod.GET)
    public ModelAndView loginfail() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../loginfail.jsp");
        // 뷰로 넘길 데이터를 modelandview 객체에 담음

        return mv;

    }

};
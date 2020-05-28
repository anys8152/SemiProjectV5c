package anys.spring.mvc.controller;

import anys.spring.mvc.service.MemberService;
import anys.spring.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {

    // 회원 CRUD 처리순서
    // IndexController -> MemberService -> MemberDAO

    private MemberService msrv;

    @Autowired
    public JoinController(MemberService msrv) {
        this.msrv = msrv;
    }

    // 이용약관
    @RequestMapping(value = "join/agree", method = RequestMethod.GET)
    public ModelAndView agree() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../join/agree.jsp");
        // 뷰로 넘길 데이터를 modelandview 객체에 담음

        return mv;
    }

    // 실명확인
    @RequestMapping(value = "join/checkme", method = RequestMethod.GET)
    public ModelAndView checkme() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../join/checkme.jsp");
        // 뷰로 넘길 데이터를 modelandview 객체에 담음

        return mv;
    }

    // 실명확인
    @RequestMapping(value = "join/verifyme", method = RequestMethod.GET)
    public ModelAndView verifyme() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../join/verifyme.jsp");
        // 뷰로 넘길 데이터를 modelandview 객체에 담음

        return mv;
    }

    // 회원가입
    @RequestMapping(value = "join/joinme", method = RequestMethod.GET)
    public ModelAndView joinme() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../join/joinme.jsp");
        // 뷰로 넘길 데이터를 modelandview 객체에 담음

        return mv;
    }

    // 회원가입
    // joinfrm의 모든 input 요소의 이름name과
    // MemberVO의 멤버변수명이 일치하는 경우
    // 자동으로 입력값을 멤버변수에 대입해 줌
    @RequestMapping(value = "join/joinme",
                    method = RequestMethod.POST)
    public String joinmeok(MemberVO m) {

        msrv.newMember(m);

        return "redirect:/join/joinok";
    }

    // 가입완료
    @RequestMapping(value = "join/joinok", method = RequestMethod.GET)
    public ModelAndView joinok() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../join/joinok.jsp");
        // 뷰로 넘길 데이터를 modelandview 객체에 담음

        return mv;
    }

}

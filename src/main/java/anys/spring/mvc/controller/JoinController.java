package anys.spring.mvc.controller;

import anys.spring.mvc.service.GoogleCaptchaUtil;
import anys.spring.mvc.service.MemberService;
import anys.spring.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class JoinController {

    // 회원 CRUD 처리순서
    // IndexController -> MemberService -> MemberDAO

    private MemberService msrv;
    private GoogleCaptchaUtil gcutil;

    @Autowired
    public JoinController(MemberService msrv, GoogleCaptchaUtil gcutil) {

        this.msrv = msrv;
        this.gcutil = gcutil;

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

    // 클라이언트 recaptcha 확인 후 서버로 전송되는 응답키의 유효성 여부를 검사
    // 검사 결과 성공시 : 회원가입 처리후, joinok로 이동
    // 검사 결과 실패시 : 회원가입 처리 취소 후, joinme로 이동

    // Model/ModelAttribute/ModelAndView
    // 사용자의 데이터를 forward 방식으로 다음 페이지에 보냄
    // 단, 데이터는 reqeust 객체에 1회성으로 저장됨.

    // RedirectAttribute
    // 사용자의 데이터를 redirect 방식으로 다음 페이지에 보냄
    // 단, 데이터는 session 객체에 1회성으로 저자오딤
    @RequestMapping(value = "join/joinme",
                    method = RequestMethod.POST)
    public String joinmeok(MemberVO m, HttpServletRequest req, RedirectAttributes rda) {

        String returnPage = "redirect:/join/joinme";
        String gCaptcha = req.getParameter("g-recaptcha");

        if (gcutil.checkCaptcha(gCaptcha)){
            msrv.newMember(m);
            returnPage =  "redirect:/join/joinok";
        } else {
            rda.addFlashAttribute("checkFail", "자동가입방지 확인 실패! 다시해");
        }

        return returnPage;
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

    // 우편번호 검색
    @ResponseBody
    @RequestMapping(value = "join/zipcode")
    public void zipcode(String dong, HttpServletResponse res) {

        try {
            res.setContentType("application/json; charset=UTF-8");
            res.getWriter().print(msrv.findZipcode(dong));
        } catch (Exception ex){
            ex.printStackTrace();
        }
    }

    // 아이디 중복 체크
    // join/checkuid?uid= '검사할아이디'
    @ResponseBody
    @RequestMapping(value = "join/checkuid")
    public void checkuid(String uid, HttpServletResponse res){
        try {
            res.getWriter().print( msrv.checkUserid(uid));

        }catch (Exception ex){
            ex.printStackTrace();
        }

    }

}

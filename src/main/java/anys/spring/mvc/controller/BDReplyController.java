package anys.spring.mvc.controller;

import anys.spring.mvc.service.BDReplyService;
import anys.spring.mvc.vo.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BDReplyController {

    private BDReplyService brsrv;

    @Autowired
    public BDReplyController(BDReplyService brsrv) {
        this.brsrv = brsrv;
    }

    // 댓글쓰기 완료
    @PostMapping(value = "/reply/bdrpywrite")
    public String bdrpywrite(ReplyVO rvo) {

        brsrv.makeReply(rvo);

        return "redirect:/board/view.do?bno=" + rvo.getBno();
    }

    // 대댓글 쓰기 완료
    @PostMapping(value = "/reply/bdcmtwrite")
    public String bdcmtwrite(ReplyVO rvo) {

        brsrv.makeComment(rvo);

        return "redirect:/board/view.do?bno=" + rvo.getBno();
    }

}

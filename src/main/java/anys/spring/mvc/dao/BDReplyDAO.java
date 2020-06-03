package anys.spring.mvc.dao;

import anys.spring.mvc.vo.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository("brdao")
public class BDReplyDAO {

    private JdbcTemplate jdbcTemplate;

    // jdbc.properties에 정의한 SQL 읽어오기
    @Value("#{jdbc['insertBDReplySQL']}") private String insertBDReplySQL;
    @Value("#{jdbc['insertBDCommentSQL']}") private String insertBDCommentSQL;
    @Value("#{jdbc['selectBDReplySQL']}") private String selectBDReplySQL;
    @Value("#{jdbc['lastBDReplyIdSQL']}") private String lastBDReplyIdSQL;

    @Autowired
    public BDReplyDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 댓글쓰기
    public void insertReply(ReplyVO rvo){
        Object[] params = new Object[] {
               rvo.getReply(), rvo.getUserid(), rvo.getBno(), lastBDReplyId()
        };

        jdbcTemplate.update(insertBDReplySQL, params);
    }

    // DBReply 테이블의 다음 rno 값을 알아냄
    private int lastBDReplyId() {
        return jdbcTemplate.queryForObject(lastBDReplyIdSQL, Integer.class);
    }

    // 댓글과 대댓글 가져오기
    public List<ReplyVO> selectReply(String bno) {

        Object[] params = new Object[] { bno };

        RowMapper<ReplyVO> mapper = new ReplyRowMapper();

        return jdbcTemplate.query(selectBDReplySQL, params, mapper);
    }

    public void insertComment(ReplyVO rvo) {
        Object[] params = new Object[] {
                rvo.getReply(), rvo.getUserid(), rvo.getBno(), rvo.getRefno()
        };

        jdbcTemplate.update(insertBDCommentSQL, params);
    }

    // 댓글과 대댓글 관련 mapper
    private class ReplyRowMapper implements RowMapper<ReplyVO> {
        @Override
        public ReplyVO mapRow(ResultSet rs, int num) throws SQLException {
            ReplyVO rvo = new ReplyVO(
                    rs.getString("rno"),
                    rs.getString("reply"),
                    rs.getString("userid"),
                    rs.getString("regdate"),
                    rs.getString("thumbup"),
                    rs.getString("bno"),
                    rs.getString("refno")
            );

            return rvo;
        }
    }

};
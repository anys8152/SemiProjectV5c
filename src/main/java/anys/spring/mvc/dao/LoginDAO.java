package anys.spring.mvc.dao;

import anys.spring.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("ldao")
public class LoginDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public LoginDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Value("#{jdbc['selectLoginSQL']}") private String selectLoginSQL;

    // 로그인 여부 확인
    public int selectLogin(MemberVO mvo) {
        Object[] params = new Object[]{
                mvo.getUserid(), mvo.getPasswd()
        };

        return jdbcTemplate.queryForObject(
                selectLoginSQL, params, Integer.class);
    }
};
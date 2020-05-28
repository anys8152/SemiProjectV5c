package anys.spring.mvc.dao;

import anys.spring.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository("mdao")
public class MemberDAO {

    // MemberDAO에서 사용할 dbcp2 객체를
    // 스프링에 의해 DI 받음
    private JdbcTemplate jdbcTemplate = null;

    // jdbc.properties에 정의한 SQL 읽어오기
    @Value("#{jdbc['insertJoinSQL']}") private String insertJoinSQL;
    @Value("#{jdbc['selectJoinSQL']}") private String selectJoinSQL;
    @Value("#{jdbc['selectOneJoinSQL']}") private String selectOneJoinSQL;

    @Autowired
    public MemberDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 회원 데이터를 member테이블에 저장
    public boolean insertMember( MemberVO m ) {
        // 실행할 sql문 정의
        String sql = "insert into member (name,userid,passwd,jumin,zipcode,addr1,addr2,email,mobile) values (?,?,?,?,?, ?,?,?,?)";

        // sql문 실행시 필요한 매개변수 정의
        Object[] params = new Object[] {
            m.getName(), m.getUserid(), m.getPasswd(),
            m.getJumin(), m.getZipcode(), m.getAddr1(),
            m.getAddr2(), m.getEmail(), m.getMobile()   };

        // 매개변수들의 데이터형 정의
     /*   int[] types = new int[] {
            Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
            Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
            Types.VARCHAR, Types.VARCHAR, Types.VARCHAR   };
*/
        // 실행
        boolean isInsert = false;
      /*  if (jdbcTemplate.update(sql, params, types) > 0)
            isInsert = true;*/

        if (jdbcTemplate.update(insertJoinSQL, params) > 0)
            isInsert = true;


        return isInsert;
    }

    // 회원데이터 중에서 이름/아이디/비번/이메일만
    // 골라서 동적배열에 담아 반환함
    public ArrayList<MemberVO> selecMember() {
        return null;
    }

    // 회원번호로 선택한 회원에 대해 모든 컬럼을 조회해서
    // MemberVO 객체에 저장하고 반환함
    public MemberVO selectOneMember(String bno) {
       return null;
    }

}

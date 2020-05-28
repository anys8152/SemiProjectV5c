package anys.spring.mvc.dao;

import anys.spring.mvc.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository("bdao")
public class BoardDAO {

    private JdbcTemplate jdbcTemplate;

    // jdbc.properties에 정의한 SQL 읽어오기
    @Value("#{jdbc['insertBoardSQL']}") private String insertBoardSQL;
    @Value("#{jdbc['selectBoardSQL']}") private String selectBoardSQL;
    @Value("#{jdbc['selectOneBoardSQL']}") private String selectOneBoardSQL;

    @Autowired
    public BoardDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 게시판 데이터를 board테이블에 저장
    public boolean insertBoard( BoardVO b ) {
        // sql 정의
       /* String sql = "insert into board (title,userid,contents) values (?,?,?)";
*/
        // 매개변수 정의
        Object[] params = new Object[] {
             b.getTitle(), b.getUserid(), b.getContents()
        };

        // 매개변수 타입 정의 - 생략 ^^;

        // 샐행
        boolean isInsert = false;
        if (jdbcTemplate.update(insertBoardSQL, params) > 0)
            isInsert = true;

        return isInsert;
    }

    // 게시판데이터 중에서 글번호/제목/작성자/작성일/추천/조회만
    // 골라서 동적배열에 담아 반환함
    // 스프링에서는 RowMapper라는 클래스를 이용해서
    // select문의 결과를 처리할 수 있음
    public List<BoardVO> selectBoard() {
      /*  String sql = "select bno,title,userid,regdate,thumbup,views from board order by bno desc";*/

        RowMapper<BoardVO> mapper = new BoardRowMapper();
        // query 메서드를 통해 결과값을 가져올때
        // 추출된 결과들에 따라 반복적으로 적용할 매핑 클래스

        // Mapper 클래스는 콜백함수처럼 작동되는데,
        // 결과집합에서 결과행이 존재할때 마다
        // Mapper 클래스의 mapRow메소드가 호출됨

        // 개발자가 작성하는 RowMapper 클래스는
        // RowMapper 인터페이스를 구현해서 생성해야 함

        return jdbcTemplate.query(selectBoardSQL, mapper);
    }

    // 글번호로 선택한 게시물에 대해 모든 컬럼을 조회해서
    // BoardVO 객체에 저장하고 반환함
    public BoardVO selectOneBoard(String bno) {
      /*  String sql = "select * from board where bno = ?";*/

        Object[] params = new Object[] { bno };

        RowMapper<BoardVO> mapper = new BoardOneMapper();
       /* ArrayList<BoardVO> bdlist = (ArrayList<BoardVO>)
                 jdbcTemplate.query(sql, mapper, params);

        return bdlist.get(0);*/

       BoardVO bvo = jdbcTemplate.queryForObject(selectOneBoardSQL, mapper, params);

       return bvo;
    }

    // selectBoard의 RowMapper 내부 클래스
    private class BoardRowMapper implements RowMapper<BoardVO> {

        @Override
        public BoardVO mapRow(ResultSet rs, int num) throws SQLException {

            BoardVO bvo = new BoardVO(
                 rs.getString("bno"),
                 rs.getString("title"),
                 rs.getString("userid"),
                 rs.getString("regdate"),
                 rs.getString("thumbup"),
                 rs.getString("views"),
                 null
            );

            return bvo;
        }
    }

    // selectOneBoard의 RowMapper 내부 클래스
    private class BoardOneMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int num) throws SQLException {

            BoardVO bvo = new BoardVO(
                    rs.getString("bno"),
                    rs.getString("title"),
                    rs.getString("userid"),
                    rs.getString("regdate"),
                    rs.getString("thumbup"),
                    rs.getString("views"),
                    rs.getString("contents")
            );

            return bvo;
        }
    }
}

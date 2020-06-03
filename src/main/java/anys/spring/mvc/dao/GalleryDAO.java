package anys.spring.mvc.dao;

import anys.spring.mvc.vo.GalleryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("gdao")
public class GalleryDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public GalleryDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void insertGallery(GalleryVO gvo) {

    }

};
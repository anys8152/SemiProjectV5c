package anys.spring.mvc.service;

import anys.spring.mvc.dao.GalleryDAO;
import anys.spring.mvc.vo.GalleryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("gsrv")
public class GalleryService {

    private GalleryDAO gdao;

    @Autowired
    public GalleryService(GalleryDAO dgao) {
        this.gdao = dgao;
    }

    // 새 갤러리 쓰기
    public void newGallery(GalleryVO gvo) {
        gdao.insertGallery(gvo);
    }
};
package anys.spring.mvc.service;

import anys.spring.mvc.dao.GalleryDAO;
import anys.spring.mvc.vo.GalleryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Service("gsrv")
public class GalleryService {

    private GalleryDAO gdao;
    private ImageUploadUtil imgutil;

    @Autowired
    public GalleryService(GalleryDAO dgao, ImageUploadUtil imgutil) {
        this.gdao = dgao;
        this.imgutil = imgutil;
    }

    // 새 갤러리 쓰기
    public void newGallery(GalleryVO gvo, MultipartFile[] img) {

        // 업로드 이미지 처리
        // 첨부파일이 존재하는 경우
        if(imgutil.ckeckGalleryFiles(img)){
            List<String> fnames = new ArrayList<>();
            for(MultipartFile f : img){
                // 첨부파일이 존재한다면 이미지파일로 서버에 저장하고
                // 결과로 파일이름을
                if(!f.getOriginalFilename().isEmpty()){
                    fnames.add(imgutil.ImageUpload(f));
                }else {
                    fnames.add(null);
                }
            }

            gvo.setFname1(fnames.get(0));
            gvo.setFname2(fnames.get(1));
            gvo.setFname3(fnames.get(2));
        }

        // 테이블에 갤러리관련 정보 저장
        String id = gdao.insertGallery(gvo);

        // 썸내일 이미지 생성
        imgutil.imageCropResize(gvo.getFname1(), id);
    }

    // 갤러리 목록 표시
    public ArrayList<GalleryVO> showGallery() {
        return (ArrayList<GalleryVO>)gdao.selectGallery();
    }

    // 갤러리 본문 출력
    public GalleryVO showOneGallery(String gno) {
        return gdao.selectOneGallery(gno);

    }
};
package anys.spring.mvc.service;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@Component("gcutil")
public class GoogleCaptchaUtil {

    // 구글 recaptcha 확인여부 검사
    public boolean checkCaptcha(String gCaptcha) {

        boolean isChecked = false;

        String secretKey = "6LfMlQAVAAAAAMOYijofRUQp6kBWo4kjLAI4PvGH";
        String verifyURL = "https://www.google.com/recaptcha/api/siteverify";
        String params = "secret=" + secretKey + "&response=" + gCaptcha;

        String success = "";
        String errorcode = "";
        String hostname = "";
        String score = "";

        try {
            String jsonData = "";

            // 클라이언트에서 넘어온 응답키를 해독하기 위해
            // 구글 recaptcha 검증 사이트 URL에 접속할때 사용할
            // URLConnerction 객체 생성
            URL url = new URL(verifyURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            conn.setDoOutput(true);

            // 구글 recaptcha 검증 사이트 URL에 접속한 후
            // POST 방식으로 검증 데이터와 비밀키를 전송함
            DataOutputStream dos = new DataOutputStream(conn.getOutputStream());
            dos.writeBytes(params);
            dos.flush();
            dos.close();

            // 비밀키와 응답데이터를 전송하고
            // 넘어온 결과를 ㅂ다아서 JSON형식으로
            // StringBuffer 변수에 저장
            InputStream is = conn.getInputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            StringBuffer sb = new StringBuffer();
            while ((jsonData = br.readLine()) != null){
                sb.append(jsonData);
            }

            // JSON 형식으로 저장된 데이터에서 검ㅈ으에 필요한 결과값 추출
            JSONParser parser = new JSONParser();
            Object json = parser.parse(sb.toString());
            JSONObject jsonObj = (JSONObject) json;

            // 추출한 결과 출력
            // recaptcha 체크여부만 추출
            isChecked = (Boolean) jsonObj.get("success");
            System.out.println("recaptcha 결과 : " + isChecked);


        } catch (Exception ex){
            ex.printStackTrace();
        }

        return isChecked;

    }
};
package dao;

import com.videoservice.util.DateUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class VideoDaoTest {
    @Test
    public void test(){
        System.out.println(DateUtil.getNow());
    }
}

package tubitak.bootcamp.obs.user;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import tubitak.bootcamp.obs.common.TestObjectBuilder;
import tubitak.bootcamp.obs.user.controller.dto.UserDTO;
import tubitak.bootcamp.obs.user.mapper.UserMapper;

@SpringBootTest
public class TestUser {

    @Test
    void testMapper() {
        UserDTO dto = UserMapper.INSTANCE.userToUserDTO(TestObjectBuilder.getUser());
        System.out.println();
    }

}

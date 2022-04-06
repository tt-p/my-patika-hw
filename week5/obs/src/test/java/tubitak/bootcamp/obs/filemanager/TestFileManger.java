package tubitak.bootcamp.obs.filemanager;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import tubitak.bootcamp.obs.bank.model.Bank;
import tubitak.bootcamp.obs.common.TestObjectBuilder;
import tubitak.bootcamp.obs.user.model.User;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
public class TestFileManger {

    @Autowired
    FileManager fileManager;

    @Test
    void testWriteReadUsers() {
        fileManager.writeUsers(TestObjectBuilder.getUsers());
        List<User> users = fileManager.readUsers();
        assertEquals(4, users.size());
    }

    @Test
    void testWriteReadBank() {
        fileManager.writeBank(TestObjectBuilder.getBank());
        Bank bank = fileManager.readBank();
        assertNotNull(bank);
    }

}

package tubitak.bootcamp.obs.filemanager;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import tubitak.bootcamp.obs.bank.model.Bank;
import tubitak.bootcamp.obs.user.model.User;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.List;


@Component
@RequiredArgsConstructor
public class FileManagerImpl implements FileManager {

    private final Path path = Path.of("", "src", "main", "resources", "json");

    private final ObjectMapper mapper;

    @Override
    public void writeUsers(List<User> users) {
        try {
            mapper.writeValue(Files.newBufferedWriter(path.resolve("users.json"), StandardCharsets.UTF_8), users);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<User> readUsers() {
        List<User> users = null;
        try {
            users = Arrays.asList(mapper.readValue(Files.newInputStream(path.resolve("users.json")), User[].class));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public void writeBank(Bank bank) {
        try {
            mapper.writeValue(Files.newBufferedWriter(path.resolve("bank.json"), StandardCharsets.UTF_8), bank);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Bank readBank() {
        Bank bank = null;
        try {
            bank = mapper.readValue(Files.newInputStream(path.resolve("bank.json")), Bank.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return bank;
    }

}

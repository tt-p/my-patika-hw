package tubitak.bootcamp.obs.user.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import tubitak.bootcamp.obs.filemanager.FileManager;
import tubitak.bootcamp.obs.user.model.LoginInfo;
import tubitak.bootcamp.obs.user.model.User;
import tubitak.bootcamp.obs.user.service.UserService;

import javax.annotation.PostConstruct;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final FileManager fileManager;

    private List<User> userList;

    @PostConstruct
    private void init() {
        userList = fileManager.readUsers();
    }

    @Override
    public List<User> getAllUsers() {
        return userList;
    }

    @Override
    public User getUser(Integer id) {
        if (id >= 0 && id < userList.size()) {
            return userList.get(id);
        } else {
            return null;
        }
    }

    @Override
    public Integer login(String tckn, String password) {
        return userList.stream()
                .filter(u -> u.getLoginInfo().equals(new LoginInfo(tckn, password)))
                .findFirst()
                .map(User::getId)
                .orElse(-1);
    }

    @Override
    public void transfer(Integer from, Integer to, Double amount) {
        User userFrom = userList.get(from);
        User userTo = userList.get(to);

        if (userFrom.withdraw(amount)) {
            userTo.deposit(amount);
            update();
        }
    }

    @Override
    public void update() {
        fileManager.writeUsers(userList);
    }

}

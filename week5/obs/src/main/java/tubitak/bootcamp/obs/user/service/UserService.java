package tubitak.bootcamp.obs.user.service;

import tubitak.bootcamp.obs.user.model.User;

import java.util.List;

public interface UserService {

    List<User> getAllUsers();

    User getUser(Integer id);

    Integer login(String tckn, String password);

    void transfer(Integer from, Integer to, Double amount);

    void update();

}

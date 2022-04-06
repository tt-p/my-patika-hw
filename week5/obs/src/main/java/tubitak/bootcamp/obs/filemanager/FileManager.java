package tubitak.bootcamp.obs.filemanager;

import tubitak.bootcamp.obs.bank.model.Bank;
import tubitak.bootcamp.obs.user.model.User;

import java.util.List;

public interface FileManager {

    void writeUsers(List<User> users);

    List<User> readUsers();

    void writeBank(Bank bank);

    Bank readBank();

}

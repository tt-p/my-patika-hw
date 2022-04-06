package tubitak.bootcamp.obs.bank.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import tubitak.bootcamp.obs.bank.model.Bank;
import tubitak.bootcamp.obs.bank.service.BankService;
import tubitak.bootcamp.obs.filemanager.FileManager;
import tubitak.bootcamp.obs.user.model.User;
import tubitak.bootcamp.obs.user.service.UserService;

import javax.annotation.PostConstruct;

@Service
@RequiredArgsConstructor
public class BankServiceImpl implements BankService {

    private final FileManager fileManager;

    private final UserService userService;

    private Bank bank;

    @PostConstruct
    private void init() {
        bank = fileManager.readBank();
    }

    @Override
    public Bank getBank() {
        return bank;
    }

    @Override
    public void pay(Integer userId, Double amount) {
        User user = userService.getUser(userId);

        if (user.withdraw(amount)) {
            bank.pay(amount);

            userService.update();
            update();
        }
    }

    @Override
    public void update() {
        fileManager.writeBank(bank);
    }
}

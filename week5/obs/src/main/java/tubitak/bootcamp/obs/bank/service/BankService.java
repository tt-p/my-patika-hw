package tubitak.bootcamp.obs.bank.service;

import tubitak.bootcamp.obs.bank.model.Bank;

public interface BankService {

    Bank getBank();

    void pay(Integer userId, Double amount);

    void update();

}

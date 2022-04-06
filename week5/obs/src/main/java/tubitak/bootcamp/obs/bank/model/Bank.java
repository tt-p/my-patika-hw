package tubitak.bootcamp.obs.bank.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Bank {

    private String name;
    private Double balance;

    public void pay(Double amount) {
        double updated = balance + amount;
        if (updated >= 0) {
            balance = updated;
        }
    }

}

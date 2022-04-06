package tubitak.bootcamp.obs.user.model;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {

    private Integer id;

    private LoginInfo loginInfo;

    private String fullName;

    @JsonSerialize(using = LocalDateSerializer.class)
    private LocalDate birthDate;

    private Double balance;

    public void deposit(Double amount) {
        double updated = balance + amount;
        if (updated >= 0) {
            balance = updated;
        }
    }

    public boolean withdraw(Double amount) {
        double updated = balance - amount;
        if (updated >= 0) {
            balance = updated;
            return true;
        } else {
            return false;
        }
    }

}

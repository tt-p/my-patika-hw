package tubitak.bootcamp.obs.common;

import tubitak.bootcamp.obs.bank.model.Bank;
import tubitak.bootcamp.obs.user.model.LoginInfo;
import tubitak.bootcamp.obs.user.model.User;

import java.time.LocalDate;
import java.util.List;

public class TestObjectBuilder {

    public static User getUser() {
        User user = new User(
                1,
                new LoginInfo("11111111110", "123"),
                "Abdulselam Deniz",
                LocalDate.of(1980,1,8),
                10.0
        );

        return user;
    }

    public static List<User> getUsers() {
        User u0 = new User(
                0,
                new LoginInfo("11111111110", "123"),
                "test",
                LocalDate.of(1900,1,1),
                10.0
        );

        User u1 = new User(
                1,
                new LoginInfo("99242036410", "Deniz*80"),
                "Selim Deniz",
                LocalDate.of(1980,1,8),
                10.0
        );

        User u2 = new User(
                2,
                new LoginInfo("78682377154", "0FTM.blk34"),
                "Fatma Balık",
                LocalDate.of(1995,4,15),
                15.7
        );

        User u3 = new User(
                3,
                new LoginInfo("20682791454", "AA,ss,l,4,nn"),
                "Gamze Aslan",
                LocalDate.of(2001,12,10),
                0.0
        );

        return List.of(u0, u1, u2, u3);
    }

    public static Bank getBank() {
        return new Bank("MyBank", 100.0);
    }

}

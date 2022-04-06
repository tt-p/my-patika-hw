package tubitak.bootcamp.obs.user.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Objects;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class LoginInfo {

    private String tckn;
    private String password;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LoginInfo loginInfo = (LoginInfo) o;
        return Objects.equals(tckn, loginInfo.tckn) && Objects.equals(password, loginInfo.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(tckn, password);
    }

}

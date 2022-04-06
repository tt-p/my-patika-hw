package tubitak.bootcamp.obs.user.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {

    private Long id;

    private LoginInfoDTO loginInfo;

    private String fullName;

    private LocalDate birthDate;

    private Double balance;

}

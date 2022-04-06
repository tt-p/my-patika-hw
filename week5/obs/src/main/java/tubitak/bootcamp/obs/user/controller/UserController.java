package tubitak.bootcamp.obs.user.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import tubitak.bootcamp.obs.user.controller.dto.LoginRequestDTO;
import tubitak.bootcamp.obs.user.controller.dto.LoginResponseDTO;
import tubitak.bootcamp.obs.user.controller.dto.TransferDTO;
import tubitak.bootcamp.obs.user.controller.dto.UserDTO;
import tubitak.bootcamp.obs.user.mapper.UserMapper;
import tubitak.bootcamp.obs.user.service.UserService;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/users")
    public List<UserDTO> getAllUsers() {
        return userService.getAllUsers().stream().map(UserMapper.INSTANCE::userToUserDTO).toList();
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/users/{id}")
    public UserDTO getUser(@PathVariable(value = "id") Integer id) {
        return UserMapper.INSTANCE.userToUserDTO(userService.getUser(id));
    }

    @ResponseStatus(HttpStatus.OK)
    @PostMapping("/login")
    public LoginResponseDTO login(@RequestBody LoginRequestDTO loginRequestDTO) {
        return new LoginResponseDTO(userService.login(loginRequestDTO.getTckn(), loginRequestDTO.getPassword()));
    }

    @ResponseStatus(HttpStatus.OK)
    @PostMapping("/transfer")
    public String transfer(@RequestBody TransferDTO dto) {
        userService.transfer(dto.getFrom(), dto.getTo(), dto.getAmount());
        return "From user: %d to user: %d, %f amount of money transferred".formatted(dto.getFrom(), dto.getTo(), dto.getAmount());
    }

}

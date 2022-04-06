package tubitak.bootcamp.obs.user.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import tubitak.bootcamp.obs.user.controller.dto.UserDTO;
import tubitak.bootcamp.obs.user.model.User;

@Mapper
public interface UserMapper {

    UserMapper INSTANCE = Mappers.getMapper(UserMapper.class);

    UserDTO userToUserDTO(User user);

}

package tubitak.bootcamp.obs.bank.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import tubitak.bootcamp.obs.bank.controller.dto.BankDTO;
import tubitak.bootcamp.obs.bank.model.Bank;
import tubitak.bootcamp.obs.user.controller.dto.UserDTO;
import tubitak.bootcamp.obs.user.model.User;

@Mapper
public interface BankMapper {

    BankMapper INSTANCE = Mappers.getMapper(BankMapper.class);

    BankDTO bankToBankDTO(Bank bank);

}

package tubitak.bootcamp.obs.bank.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import tubitak.bootcamp.obs.bank.controller.dto.BankDTO;
import tubitak.bootcamp.obs.bank.controller.dto.PayRequestDTO;
import tubitak.bootcamp.obs.bank.mapper.BankMapper;
import tubitak.bootcamp.obs.bank.service.BankService;

@RestController
@RequiredArgsConstructor
public class BankController {

    private final BankService bankService;

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/bank")
    public BankDTO getBank() {
        return BankMapper.INSTANCE.bankToBankDTO(bankService.getBank());
    }

    @ResponseStatus(HttpStatus.OK)
    @PostMapping("/bank/pay")
    public String pay(@RequestBody PayRequestDTO dto) {
        bankService.pay(dto.getUserId(), dto.getAmount());
        return "From user: %d, %f amount of money paid to bank".formatted(dto.getUserId(), dto.getAmount());
    }

}

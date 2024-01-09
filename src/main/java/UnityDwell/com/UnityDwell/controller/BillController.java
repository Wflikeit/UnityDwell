package UnityDwell.com.UnityDwell.controller;

import UnityDwell.com.UnityDwell.dto.listResponses.BillsResponse;
import UnityDwell.com.UnityDwell.dto.request.CreateOrUpdateBillRequest;
import UnityDwell.com.UnityDwell.dto.response.BillResponse;
import UnityDwell.com.UnityDwell.service.BillService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/bills")
public class BillController {
    private final BillService billService;

    @GetMapping(value = "/owner/{ownerId}")
    public BillsResponse getAllBillsOfOwner(@PathVariable("ownerId") UUID ownerId) {
        return billService.getAllBillsOfOwner(ownerId);
    }

    @GetMapping (value = "/housingAssociation/{housingAssociationId}")
    BillsResponse getAllBillsOfHousingAssociation(@PathVariable("housingAssociationId") UUID housingAssociationId) {
        return billService.getAllBillsOfHousingAssociation(housingAssociationId);
    }

    @DeleteMapping(value = "/{billId}")
    public void deleteBill(@PathVariable("billId") UUID billId) {
        billService.deleteBill(billId);
    }

    @PostMapping()
    @ResponseStatus(HttpStatus.CREATED)
    public BillResponse addBill(@Validated @RequestBody CreateOrUpdateBillRequest request) {
        return billService.addBill(request);
    }
}

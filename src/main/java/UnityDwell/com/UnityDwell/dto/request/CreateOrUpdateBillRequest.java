package UnityDwell.com.UnityDwell.dto.request;

import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDate;
import java.util.UUID;

@Data
@Builder
public class CreateOrUpdateBillRequest {
    @NotNull(message = "Amount is requested")
    @DecimalMin(value = "0.01", message = "amount must be greater or equal to 0.01")
    private double amount;
    @NotNull(message = "Date of publishing is required")
    private LocalDate dateOfPublishing;
    @NotNull(message = "Housing association id is required")
    private UUID housingAssociationId;
    @NotNull(message = "Flat owner id is required")
    private UUID flatOwnerId;
    @NotNull(message = "Bill title id is required")
    private UUID billTitleId;
}

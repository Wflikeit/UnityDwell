package UnityDwell.com.UnityDwell.dto.listResponses;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class ResidentsResponse {
    List<ResidentsResponse> residents;
}

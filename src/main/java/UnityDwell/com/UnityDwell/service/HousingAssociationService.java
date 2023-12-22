package UnityDwell.com.UnityDwell.service;

import UnityDwell.com.UnityDwell.dto.HousingAssociationResponse;
import UnityDwell.com.UnityDwell.dto.PublicationResponse;
import UnityDwell.com.UnityDwell.dto.listResponses.PublicationsResponse;
import UnityDwell.com.UnityDwell.dto.mapper.HousingAssociationDTOMapper;
import UnityDwell.com.UnityDwell.dto.mapper.PublicationDTOMapper;
import UnityDwell.com.UnityDwell.model.HousingAssociation;
import UnityDwell.com.UnityDwell.repository.HousingAssociationRepository;
import UnityDwell.com.UnityDwell.repository.PublicationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class HousingAssociationService {
    private final HousingAssociationRepository housingAssociationRepository;
    private final HousingAssociationDTOMapper housingAssociationDTOMapper;
    private final PublicationRepository publicationRepository;
    private final PublicationDTOMapper publicationDTOMapper;

    @Transactional(readOnly = true)
    public HousingAssociationResponse getHousingAssociationById(UUID housingAssociationId) {


        HousingAssociation housingAssociation = housingAssociationRepository.findHousingAssociationById(housingAssociationId)
                .orElseThrow();
        return housingAssociationDTOMapper.mapTo(housingAssociation);
    }

    @Transactional(readOnly = true)
    public PublicationsResponse getPublicationsByHousingAssociationId(UUID publicationId) {
        List<PublicationResponse> publications = publicationRepository
                .getAllPublicationsFromHousingAssociation(publicationId).stream()
                .map(publicationDTOMapper::mapTo)
                .toList();

        return PublicationsResponse.builder().publications(publications).build();
    }
}

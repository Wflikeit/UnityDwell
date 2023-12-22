package UnityDwell.com.UnityDwell.service;

import UnityDwell.com.UnityDwell.dto.HousingAssociationResponse;
import UnityDwell.com.UnityDwell.dto.PublicationResponse;
import UnityDwell.com.UnityDwell.dto.listResponses.PublicationsResponse;
import UnityDwell.com.UnityDwell.dto.mapper.HousingAssociationDTOMapper;
import UnityDwell.com.UnityDwell.dto.mapper.PublicationDTOMapper;
import UnityDwell.com.UnityDwell.model.HousingAssociation;
import UnityDwell.com.UnityDwell.model.Publication;
import UnityDwell.com.UnityDwell.repository.HousingAssociationRepository;
import UnityDwell.com.UnityDwell.repository.PublicationRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class HousingAssociationServiceTest {
    @Mock
    HousingAssociationRepository housingAssociationRepository;
    @Mock
    HousingAssociationDTOMapper housingAssociationDTOMapper;
    @Mock
    PublicationRepository publicationRepository;
    @Mock
    PublicationDTOMapper publicationDTOMapper;
    @InjectMocks
    HousingAssociationService housingAssociationService;

    @Test
    public void testGetHousingAssociationById_WhenOneExists() {
        // Arrange
        UUID id = UUID.randomUUID();
        HousingAssociation housingAssociation = HousingAssociation.builder().build();
        HousingAssociationResponse mappedAssociationResponse = HousingAssociationResponse.builder().build();
        when(housingAssociationRepository.findHousingAssociationById(id)).thenReturn(Optional.of(housingAssociation));
        when(housingAssociationDTOMapper.mapTo(housingAssociation)).thenReturn(mappedAssociationResponse);
        // Act & Assert
        assertEquals(mappedAssociationResponse, housingAssociationService.getHousingAssociationById(id));
    }

    @Test
    public void testGetPublicationsByHousingAssociationId_WhenOneExists() {
        // Arrange
        UUID id = UUID.randomUUID();
        Publication publication = Publication.builder().id(id).build();
        PublicationResponse publicationResponse = PublicationResponse.builder().id(id).build();
        List<PublicationResponse> expectedPublicationResponseList = List.of(publicationResponse);
        PublicationsResponse expectedPublicationsResponse = PublicationsResponse.builder().publications(expectedPublicationResponseList).build();

        when(publicationRepository.getAllPublicationsFromHousingAssociation(id)).thenReturn(List.of(publication));
        when(publicationDTOMapper.mapTo(publication)).thenReturn(publicationResponse);

        // Act
        PublicationsResponse actualPublicationsResponse = housingAssociationService.getPublicationsByHousingAssociationId(id);

        // Assert
        assertThat(actualPublicationsResponse)
                .usingRecursiveComparison()
                .isEqualTo(expectedPublicationsResponse);
    }


}

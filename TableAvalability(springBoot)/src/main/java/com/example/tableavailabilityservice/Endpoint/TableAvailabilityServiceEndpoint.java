package com.example.tableavailabilityservice.Endpoint;



import com.example.tableavailability.GetAvailableTablesRequest;
import com.example.tableavailability.GetAvailableTablesResponse;
import com.example.tableavailabilityservice.Entities.Table;
import com.example.tableavailabilityservice.Repository.TableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import java.util.List;
import java.util.stream.Collectors;

@Endpoint
public class TableAvailabilityServiceEndpoint {

    private static final String NAMESPACE_URI = "http://com.springbootsoap.allapis";

    @Autowired
    private TableRepository tableRepository;

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getAvailableTablesRequest")
    @ResponsePayload
    public GetAvailableTablesResponse getAvailableTables(@RequestPayload GetAvailableTablesRequest request) {
        GetAvailableTablesResponse response = new GetAvailableTablesResponse();

        // Use DomainTable to interact with the database
        List<Table> availableTables = tableRepository
                .findByRestaurantIdAndAvailable(request.getRestaurantId(), true)
                .stream()
                .filter(table -> (request.getNumOfChairs() == null || table.getNumOfChairs() == request.getNumOfChairs()) &&
                        (request.getPosition() == null || table.getPosition().equalsIgnoreCase(request.getPosition())))
                .collect(Collectors.toList());

        // Convert DomainTable objects to SoapTable objects for the SOAP response
        availableTables.forEach(table -> {
            com.example.tableavailability.Table responseTable = new com.example.tableavailability.Table();
            responseTable.setId(table.getId());
            responseTable.setNumber(table.getNumber());
            responseTable.setPosition(table.getPosition());
            responseTable.setNumOfChairs(table.getNumOfChairs());
            responseTable.setAvailable(table.isAvailable());
            response.getTables().add(responseTable);
        });

        return response;
    }
}

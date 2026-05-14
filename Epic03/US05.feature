@AgregarVehiculoAFavoritos
Feature: Como arrendatario, quiero agregar vehículos a una lista de favoritos para poder revisarlos más tarde.

  Scenario: Vehículo agregado a favoritos
    Given que el arrendatario encuentra un vehículo de su interés
    When selecciona la opción de agregar a favoritos
    Then el sistema guarda el vehículo en la lista de favoritos del arrendatario

  Scenario: Fallo en la adición a favoritos
    Given que el arrendatario intenta agregar un vehículo a favoritos
    When el sistema presenta un error o no registra correctamente el favorito
    Then el sistema muestra un mensaje de error y no guarda el vehículo como favorito

@BuscarVehiculosDisponibles
Feature: Como arrendatario, quiero buscar vehículos disponibles en la plataforma para seleccionar el que mejor se ajuste a mis necesidades.

  Scenario: Búsqueda exitosa
    Given que el arrendatario desea buscar un vehículo
    When ingresa criterios como ubicación, precio y tipo de vehículo
    Then el sistema muestra una lista de vehículos que cumplen con los criterios de búsqueda

  Scenario: No hay vehículos disponibles
    Given que el arrendatario busca un vehículo
    When no hay vehículos que cumplan con los criterios de búsqueda
    Then el sistema muestra un mensaje indicando que no hay vehículos disponibles

@FiltrarVehiculosPorEstado
Feature: Como propietario, quiero filtrar mis vehículos por estado para identificar los disponibles o en reserva.

  Scenario: Filtrar vehículos disponibles
    Given que el propietario tiene vehículos con diferentes estados
    When filtra por estado "available"
    Then el sistema muestra solo los vehículos disponibles

  Scenario: Filtrar vehículos en reserva
    Given que el propietario tiene vehículos con diferentes estados
    When filtra por estado "reserved"
    Then el sistema muestra solo los vehículos en reserva

  Scenario: Filtrar todos los vehículos
    Given que el propietario tiene vehículos con diferentes estados
    When no aplica ningún filtro
    Then el sistema muestra todos los vehículos del propietario

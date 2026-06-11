@VerMisVehiculos
Feature: Como propietario, quiero ver mis vehículos publicados para gestionar mi flota.

  Scenario: Ver lista de vehículos publicados
    Given que el propietario tiene vehículos registrados
    When accede a la sección "Mis Vehículos"
    Then el sistema muestra una lista con todos los vehículos del propietario incluyendo estado y detalles

  Scenario: Ver vehículo sin registros
    Given que el propietario no tiene vehículos registrados
    When accede a la sección "Mis Vehículos"
    Then el sistema muestra un mensaje indicando que no tiene vehículos registrados

  Scenario: Ver detalles de un vehículo específico
    Given que el propietario tiene vehículos registrados
    When selecciona un vehículo de la lista
    Then el sistema muestra los detalles completos del vehículo incluyendo imágenes y estado

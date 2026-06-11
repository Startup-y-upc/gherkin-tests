@EditarInformacionVehiculo
Feature: Como propietario, quiero editar la información de un vehículo para mantener los datos actualizados.

  Scenario: Editar información de vehículo exitosamente
    Given que el propietario tiene un vehículo publicado
    When modifica la información (marca, modelo, precio, descripción, características)
    Then el sistema actualiza la información y confirma el cambio

  Scenario: Editar precio de vehículo
    Given que el propietario tiene un vehículo publicado
    When modifica el precio diario del vehículo
    Then el sistema actualiza el precio y notifica a los usuarios interesados

  Scenario: Editar vehículo con estado de reserva activa
    Given que el propietario tiene un vehículo con reserva activa
    When intenta editar información crítica del vehículo
    Then el sistema permite la edición pero muestra una advertencia sobre reservas activas

@RegistrarVehiculo
Feature: Como propietario, quiero registrar un vehículo en la plataforma para que los arrendatarios puedan alquilarlo.

  Scenario: Registro exitoso
    Given que el propietario desea registrar un vehículo
    When ingresa los detalles requeridos (marca, modelo, año, precio, etc.)
    Then el sistema guarda el vehículo y lo pone disponible para ser alquilado

  Scenario: Fallo en el registro
    Given que el propietario intenta registrar un vehículo
    When falta información o hay datos incorrectos
    Then el sistema muestra un mensaje de error y no permite completar el registro hasta que se corrijan los datos

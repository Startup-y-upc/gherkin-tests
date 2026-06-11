@RegistrarVehiculo
Feature: Como propietario, quiero registrar un vehículo en la plataforma para publicarlo para alquiler.

  Scenario: Registro exitoso de vehículo
    Given que el propietario está autenticado
    When ingresa los detalles requeridos (marca, modelo, año, VIN, placa, precio diario, categoría, ubicación, asientos, transmisión, tipo de combustible)
    Then el sistema crea el vehículo con estado "draft" y lo guarda como borrador

  Scenario: Registro con datos faltantes
    Given que el propietario intenta registrar un vehículo
    When omite campos obligatorios (marca, modelo, precio)
    Then el sistema muestra mensajes de error y no crea el vehículo

  Scenario: Registro con datos inválidos
    Given que el propietario intenta registrar un vehículo
    When ingresa datos inválidos (año futuro, placa duplicada)
    Then el sistema valida los datos y muestra errores de validación

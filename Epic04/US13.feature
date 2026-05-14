@GestionarVehiculosAlquilados
Feature: Como propietario, deseo gestionar los vehículos que he alquilado para mantener control de las transacciones.

  Scenario: Gestión correcta de vehículos alquilados
    Given que el propietario ha alquilado uno de sus vehículos
    When accede a la sección de "Mis Vehículos Alquilados"
    Then el sistema muestra una lista de los vehículos alquilados y sus detalles (arrendatario, fecha de alquiler, duración, etc.)

  Scenario: No hay vehículos alquilados en el historial
    Given que el propietario intenta gestionar sus vehículos alquilados
    When no ha alquilado vehículos en el pasado o actualmente
    Then el sistema muestra un mensaje indicando que no tiene vehículos alquilados para gestionar

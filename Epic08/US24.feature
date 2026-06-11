@IniciarReserva
Feature: Como arrendatario, quiero iniciar una reserva de vehículo para solicitar un alquiler.

  Scenario: Iniciar reserva exitosamente
    Given que el arrendatario está autenticado y ha seleccionado un vehículo disponible
    When selecciona las fechas de inicio y fin del alquiler
    Then el sistema crea una reserva con estado "pending" y muestra los detalles

  Scenario: Iniciar reserva con vehículo no disponible
    Given que el arrendatario intenta reservar un vehículo
    When selecciona fechas que ya están bloqueadas o reservadas
    Then el sistema muestra un error indicando que el vehículo no está disponible en esas fechas

  Scenario: Iniciar reserva sin autenticación
    Given que un visitante intenta iniciar una reserva
    When selecciona un vehículo y las fechas de alquiler
    Then el sistema redirige al login y muestra un mensaje indicando que debe iniciar sesión

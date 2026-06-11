@SeleccionarCobertura
Feature: Como arrendatario, quiero seleccionar una cobertura de reserva para proteger mi alquiler.

  Scenario: Seleccionar cobertura básica
    Given que el arrendatario tiene una reserva confirmada
    When selecciona la cobertura básica de protección
    Then el sistema actualiza la reserva con la cobertura seleccionada y ajusta el precio total

  Scenario: Seleccionar cobertura premium
    Given que el arrendatario tiene una reserva confirmada
    When selecciona la cobertura premium de protección
    Then el sistema actualiza la reserva con la cobertura premium y ajusta el precio total

  Scenario: No seleccionar cobertura
    Given que el arrendatario tiene una reserva confirmada
    When decide no seleccionar ninguna cobertura
    Then el sistema registra la reserva sin cobertura y muestra un aviso de riesgo

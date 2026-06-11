@ConfirmarReserva
Feature: Como arrendatario, quiero confirmar los datos de mi reserva para asegurar el alquiler.

  Scenario: Confirmar reserva exitosamente
    Given que el arrendatario tiene una reserva en estado "pending"
    When revisa y confirma los datos de la reserva (vehículo, fechas, precio)
    Then el sistema cambia el estado de la reserva a "confirmed"

  Scenario: Cancelar reserva antes de confirmar
    Given que el arrendatario tiene una reserva en estado "pending"
    When decide cancelar la reserva antes de confirmar
    Then el sistema elimina la reserva y libera las fechas bloqueadas

  Scenario: Confirmar reserva con fechas inválidas
    Given que el arrendatario tiene una reserva en estado "pending"
    When intenta confirmar con fechas que ya no están disponibles
    Then el sistema muestra un error y solicita seleccionar nuevas fechas

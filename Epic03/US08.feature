@ReservarUnVehiculo
Feature: Como arrendatario, quiero reservar un vehículo para asegurar su disponibilidad en una fecha y hora específicas.

  Scenario: Reserva exitosa
    Given que el arrendatario ha seleccionado un vehículo
    When el sistema marca el alquiler como completado
    Then el sistema permite que ambas partes dejen una reseña sobre la experiencia de la transacción

  Scenario: No se puede dejar reseña sin completar el alquiler
    Given que el arrendatario o el propietario intentan dejar una reseña
    When el alquiler aún no ha sido marcado como completado
    Then el sistema no permite dejar la reseña hasta que el proceso de alquiler haya concluido


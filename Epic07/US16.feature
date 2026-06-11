@GestionarDisponibilidad
Feature: Como propietario, quiero gestionar la disponibilidad de mi vehículo para bloquear fechas no disponibles.

  Scenario: Bloquear fechas exitosamente
    Given que el propietario tiene un vehículo disponible
    When bloquea un rango de fechas no disponibles
    Then el sistema registra el bloqueo y el vehículo no aparece disponible en esas fechas

  Scenario: Verificar disponibilidad de vehículo
    Given que un arrendatario quiere consultar disponibilidad
    When consulta las fechas disponibles de un vehículo
    Then el sistema muestra las fechas disponibles y bloqueadas

  Scenario: Eliminar bloqueo de fechas
    Given que el propietario tiene fechas bloqueadas
    When elimina un bloqueo de fechas
    Then el sistema libera las fechas y el vehículo vuelve a estar disponible

  Scenario: Intentar bloquear fechas ya reservadas
    Given que el propietario tiene un vehículo con reservas activas
    When intenta bloquear fechas que ya están reservadas
    Then el sistema muestra un error indicando que no puede bloquear fechas reservadas

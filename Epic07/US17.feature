@ConsultarRendimientoVehiculo
Feature: Como propietario, quiero consultar el rendimiento de mi vehículo para evaluar su rentabilidad.

  Scenario: Consultar reporte de ganancias
    Given que el propietario tiene vehículos con reservas completadas
    When accede al reporte de ganancias del vehículo
    Then el sistema muestra el total de ganancias, número de reservas y métricas de rendimiento

  Scenario: Consultar rendimiento sin reservas
    Given que el propietario tiene un vehículo sin reservas completadas
    When accede al reporte de ganancias del vehículo
    Then el sistema muestra un mensaje indicando que no hay datos de rendimiento disponibles

  Scenario: Consultar calificación del vehículo
    Given que el vehículo tiene reseñas de arrendatarios
    When consulta la calificación del vehículo
    Then el sistema muestra la calificación promedio y el total de reseñas

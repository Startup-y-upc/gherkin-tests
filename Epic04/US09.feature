@VerHistorialDeAlquileres
Feature: Como arrendatario, deseo ver el historial de mis alquileres anteriores para poder llevar un control de estos.

  Scenario: Historial mostrado correctamente
    Given que el arrendatario desea ver el historial de sus alquileres
    When accede a la sección de historial de alquileres
    Then el sistema muestra una lista de sus alquileres anteriores con detalles como fecha, vehículo alquilado y reseñas

  Scenario: No hay alquileres anteriores
    Given que el arrendatario accede a la sección de historial de alquileres
    When no ha realizado alquileres previos
    Then el sistema muestra un mensaje indicando que no tiene historial de alquileres

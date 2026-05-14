@RecibirNotificacionesDeDisponibilidad
Feature: Como arrendatario, deseo recibir notificaciones para poder enterarme cuando un vehículo que me interesa esté disponible.

  Scenario: Notificación exitosa
    Given que el arrendatario marca un vehículo como favorito
    When el vehículo esté disponible para alquiler nuevamente
    Then el sistema envía una notificación al arrendatario indicando la disponibilidad del vehículo

  Scenario: Fallo en la notificación
    Given que el arrendatario intenta marcar un vehículo como favorito
    When el sistema presenta un error o no registra correctamente el favorito
    Then el sistema muestra un mensaje de error y no envía notificaciones

@CalificarUnVehiculo
Feature: Como arrendatario, quiero calificar un vehículo después de haberlo alquilado para compartir mi experiencia con otros usuarios.

  Scenario: Calificación exitosa
    Given que el arrendatario ha completado un alquiler
    When ingresa una calificación y una reseña del vehículo
    Then el sistema guarda la calificación y la reseña, y la asocia con el vehículo en cuestión

  Scenario: Fallo en la calificación
    Given que el arrendatario intenta calificar un vehículo
    When el sistema presenta un error o no guarda correctamente la calificación
    Then el sistema muestra un mensaje de error y no guarda la calificación

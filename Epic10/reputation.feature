@SistemaReputacion
Feature: Como usuario de la plataforma, quiero consultar la reputación de otros usuarios para generar confianza.

  Scenario: Consultar reputación de usuario exitosamente
    Given que un usuario tiene reseñas y actividad en la plataforma
    When se consulta la reputación del usuario
    Then el sistema muestra la calificación de reputación basada en las reseñas recibidas

  Scenario: Consultar reputación de usuario sin actividad
    Given que un usuario no tiene reseñas ni actividad
    When se consulta la reputación del usuario
    Then el sistema muestra un mensaje indicando que no hay datos de reputación disponibles

  Scenario: Consultar calificación de vehículo
    Given que un vehículo tiene reseñas de arrendatarios
    When se consulta la calificación del vehículo
    Then el sistema muestra la calificación promedio y el total de reseñas

  Scenario: Calcular reputación con reseñas mixtas
    Given que un usuario tiene reseñas positivas y negativas
    When se calcula la reputación del usuario
    Then el sistema muestra una calificación ponderada que refleja el promedio de todas las reseñas

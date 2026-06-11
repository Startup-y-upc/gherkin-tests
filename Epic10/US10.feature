@VerIndicadoresPerfil
Feature: Como usuario, quiero ver indicadores de mi perfil para confiar en mi cuenta.

  Scenario: Ver indicadores de perfil exitosamente
    Given que el usuario está autenticado
    When accede a los indicadores de su perfil
    Then el sistema muestra la reputación, estado de verificación y calificación promedio

  Scenario: Ver indicadores sin datos
    Given que el usuario está autenticado pero no tiene actividad
    When accede a los indicadores de su perfil
    Then el sistema muestra indicadores vacíos o con valor por defecto

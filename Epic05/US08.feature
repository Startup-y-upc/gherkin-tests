@VerPerfil
Feature: Como usuario autenticado, quiero ver mi perfil para revisar mi información personal y estado de verificación.

  Scenario: Ver perfil exitosamente
    Given que el usuario está autenticado
    When accede a la sección de perfil
    Then el sistema muestra la información personal y el estado KYC

  Scenario: Perfil sin datos completos
    Given que el usuario está autenticado pero no completó su perfil
    When accede a la sección de perfil
    Then el sistema muestra los campos vacíos y sugiere completarlos

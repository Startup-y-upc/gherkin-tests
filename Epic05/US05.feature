@CompletarPerfil
Feature: Como nuevo usuario, quiero completar mi perfil para personalizar mi experiencia en la plataforma.

  Scenario: Completar perfil exitosamente
    Given que un usuario se ha registrado
    When completa los campos del perfil (nombre, teléfono, dirección)
    Then el sistema guarda la información y confirma la actualización

  Scenario: Completar perfil con datos incompletos
    Given que un usuario intenta completar su perfil
    When omite campos obligatorios
    Then el sistema muestra mensajes de error y no guarda el perfil

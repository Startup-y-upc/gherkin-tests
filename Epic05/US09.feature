@EditarPerfil
Feature: Como usuario autenticado, quiero editar mi información personal para mantener mis datos actualizados.

  Scenario: Editar perfil exitosamente
    Given que el usuario tiene un perfil completo
    When modifica campos del perfil (nombre, teléfono, dirección)
    Then el sistema actualiza la información y confirma el cambio

  Scenario: Editar perfil con datos inválidos
    Given que el usuario intenta editar su perfil
    When ingresa datos inválidos (email duplicado, formato incorrecto)
    Then el sistema muestra mensajes de error y no guarda los cambios

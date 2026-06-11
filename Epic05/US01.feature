@RegistrarUsuario
Feature: Como visitante, quiero registrarme en la plataforma para crear mi cuenta y acceder a los servicios.

  Scenario: Registro exitoso
    Given que un visitante desea registrarse en la plataforma
    When ingresa nombre, email y contraseña válidos
    And selecciona el tipo de cuenta (propietario o arrendatario)
    Then el sistema crea la cuenta y envía un email de verificación

  Scenario: Registro con email duplicado
    Given que ya existe un usuario con el email
    When intenta registrarse con el mismo email
    Then el sistema retorna un error de conflicto (409 Conflict)

  Scenario: Registro con datos inválidos
    Given que un visitante desea registrarse
    When ingresa datos inválidos (email inválido, contraseña débil)
    Then el sistema muestra mensajes de error y no crea la cuenta

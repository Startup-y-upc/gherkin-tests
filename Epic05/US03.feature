@RecuperarContrasena
Feature: Como usuario, quiero recuperar mi contraseña para acceder a mi cuenta si la olvido.

  Scenario: Solicitud de recuperación exitosa
    Given que el usuario tiene una cuenta verificada
    When solicita recuperación de contraseña ingresando su email
    Then el sistema envía un email con enlace de recuperación

  Scenario: Reset de contraseña exitoso
    Given que el usuario recibió el enlace de recuperación
    When ingresa una nueva contraseña válida
    Then el sistema actualiza la contraseña y confirma el cambio

  Scenario: Token de recuperación expirado
    Given que el token de recuperación fue generado hace más de 24 horas
    When intenta usar el token expirado
    Then el sistema indica que el token ha expirado y solicita uno nuevo

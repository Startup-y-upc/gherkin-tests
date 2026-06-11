@IniciarSesion
Feature: Como usuario registrado, quiero iniciar sesión para acceder a mi cuenta y funcionalidades personalizadas.

  Scenario: Login exitoso
    Given que el usuario tiene una cuenta verificada
    When ingresa credenciales válidas (email y contraseña)
    Then el sistema retorna un JWT token y redirige al dashboard

  Scenario: Login con credenciales incorrectas
    Given que el usuario tiene una cuenta
    When ingresa una contraseña incorrecta
    Then el sistema retorna un error 401 Unauthorized

  Scenario: Login con email no verificado
    Given que el usuario tiene una cuenta pero no verificada
    When intenta iniciar sesión
    Then el sistema indica que debe verificar su email primero

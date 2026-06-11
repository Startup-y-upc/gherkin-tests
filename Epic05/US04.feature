@SeleccionarTipoCuenta
Feature: Como nuevo usuario, quiero seleccionar mi tipo de cuenta para personalizar mi experiencia.

  Scenario: Selección de tipo propietario
    Given que un nuevo usuario se está registrando
    When selecciona el tipo de cuenta como propietario
    Then el sistema redirige al onboarding de propietario

  Scenario: Selección de tipo arrendatario
    Given que un nuevo usuario se está registrando
    When selecciona el tipo de cuenta como arrendatario
    Then el sistema redirige al onboarding de arrendatario

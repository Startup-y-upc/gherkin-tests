@VisualizarPaginaInformativa
Feature: Como usuario, deseo poder acceder a una página de la empresa para poder enterarme del servicio que ofrecen.

  Scenario: Página informativa mostrada correctamente
    Given que el usuario accede a la página informativa
    When carga la sección de información de la empresa
    Then el sistema muestra correctamente la información sobre el servicio que ofrecen

  Scenario: Error en la carga de la página informativa
    Given que el usuario intenta acceder a la página informativa
    When ocurre un error en la carga
    Then el sistema muestra un mensaje de error y no se puede acceder a la información

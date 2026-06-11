@ConsultarEstadoKYC
Feature: Como usuario, quiero consultar el estado de mi verificación para saber si mi cuenta está aprobada.

  Scenario: Consultar estado KYC pendiente
    Given que el usuario ha subido documentos de verificación
    When consulta el estado de su verificación
    Then el sistema retorna estado "pending"

  Scenario: Consultar estado KYC aprobado
    Given que el usuario ha sido verificado exitosamente
    When consulta el estado de su verificación
    Then el sistema retorna estado "approved"

  Scenario: Consultar estado KYC rechazado
    Given que el usuario fue rechazado en la verificación
    When consulta el estado de su verificación
    Then el sistema retorna estado "rejected" con motivo del rechazo

@SubirDocumentosKYC
Feature: Como usuario, quiero subir documentos de verificación para completar el proceso KYC.

  Scenario: Subir documentos KYC exitosamente
    Given que el usuario está autenticado
    When sube documentos de verificación (documento de identidad, comprobante de domicilio)
    Then el sistema almacena los documentos en Cloudinary y establece estado "pending"

  Scenario: Subir documentos con formato inválido
    Given que el usuario intenta subir documentos
    When sube archivos con formato no soportado
    Then el sistema muestra un error indicando los formatos permitidos

  Scenario: Subir múltiples documentos
    Given que el usuario está en el proceso KYC
    When sube múltiples documentos en una sola operación
    Then el sistema registra todos los documentos y actualiza el estado KYC

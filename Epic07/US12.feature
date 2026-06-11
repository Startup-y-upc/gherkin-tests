@PublicarVehiculo
Feature: Como propietario, quiero publicar un vehículo para que esté disponible para los arrendatarios.

  Scenario: Publicar vehículo exitosamente
    Given que el propietario tiene un vehículo en estado "draft"
    When sube imágenes del vehículo y publica
    Then el sistema cambia el estado a "available" y lo muestra en el catálogo

  Scenario: Publicar vehículo sin imágenes
    Given que el propietario tiene un vehículo en estado "draft"
    When intenta publicar sin subir imágenes
    Then el sistema muestra un error indicando que se requieren al menos una imagen

  Scenario: Publicar vehículo con documentos KYC pendientes
    Given que el propietario no ha completado su verificación KYC
    When intenta publicar un vehículo
    Then el sistema indica que debe completar la verificación primero

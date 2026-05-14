@ContactarAlPropietario
Feature: Como arrendatario, quiero contactar al propietario de un vehículo para hacerle preguntas o coordinar detalles del alquiler.

  Scenario: Contacto exitoso
    Given que el arrendatario desea hacer una consulta al propietario
    When selecciona la opción de contactar propietario y envía un mensaje
    Then el sistema envía el mensaje al propietario y notifica al arrendatario que el mensaje fue enviado correctamente

  Scenario: Fallo en el envío del mensaje
    Given que el arrendatario intenta contactar al propietario
    When hay un error en el sistema
    Then el sistema muestra un mensaje de error e informa al arrendatario que el mensaje no pudo ser enviado

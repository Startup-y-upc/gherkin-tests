@SistemaConversaciones
Feature: Como usuario de la plataforma, quiero comunicarme con otros usuarios a través de mensajes para coordinar detalles del alquiler.

  Scenario: Crear conversación exitosamente
    Given que un arrendatario y un propietario están interesados en una reserva
    When el arrendatario inicia una conversación con el propietario
    Then el sistema crea la conversación y notifica al propietario

  Scenario: Enviar mensaje exitosamente
    Given que existe una conversación activa
    When un usuario envía un mensaje
    Then el sistema guarda el mensaje y notifica al destinatario

  Scenario: Consultar mensajes de una conversación
    Given que existe una conversación con mensajes
    When un usuario accede a la conversación
    Then el sistema muestra el historial de mensajes en orden cronológico

  Scenario: Listar conversaciones de un usuario
    Given que un usuario tiene conversaciones activas
    When accede a la lista de conversaciones
    Then el sistema muestra todas las conversaciones del usuario con el último mensaje

  Scenario: Cerrar conversación
    Given que existe una conversación activa
    When uno de los participantes cierra la conversación
    Then la conversación se marca como cerrada y ya no se pueden enviar nuevos mensajes

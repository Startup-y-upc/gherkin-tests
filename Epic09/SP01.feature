@IntegracionPasarelaPagos
Feature: Como arrendatario, quiero procesar pagos a través de Stripe para completar mi reserva.

  Scenario: Crear Payment Intent exitosamente
    Given que el arrendatario tiene una reserva confirmada con cobertura seleccionada
    When solicita crear un Payment Intent para el pago
    Then Stripe retorna un Payment Intent ID y client secret para completar el pago

  Scenario: Procesar pago exitoso con tarjeta
    Given que el arrendatario tiene un Payment Intent activo
    When completa el pago con los datos de su tarjeta
    Then el sistema procesa el pago exitosamente y actualiza el estado de la reserva a "active"

  Scenario: Procesar pago fallido
    Given que el arrendatario tiene un Payment Intent activo
    When intenta pagar con una tarjeta rechazada
    Then el sistema muestra un error indicando el motivo del rechazo y la reserva permanece en estado "confirmed"

  Scenario: Procesar reembolso exitoso
    Given que una reserva ha sido completada y pagada
    When el propietario o el sistema solicita un reembolso
    Then Stripe procesa el reembolso y el sistema actualiza el estado de la reserva

  Scenario: Recibir evento de webhook de Stripe
    Given que Stripe procesa un evento de pago
    When el webhook recibe el evento "payment_intent.succeeded"
    Then el sistema actualiza el estado de pago de la reserva y notifica al arrendatario

  Scenario: Generar comprobante de pago
    Given que una reserva ha sido pagada exitosamente
    When el arrendatario solicita el comprobante de pago
    Then el sistema genera y muestra el receipt con los detalles de la transacción

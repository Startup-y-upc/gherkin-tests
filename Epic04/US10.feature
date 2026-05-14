@GestionarPagos
Feature: Como arrendatario, quiero gestionar mis pagos para poder completar las transacciones de alquiler.

  Scenario: Pago exitoso
    Given que el arrendatario debe realizar un pago
    When ingresa la información de su tarjeta o cuenta de pago y autoriza la transacción
    Then el sistema procesa el pago y confirma la transacción al arrendatario

  Scenario: Pago fallido
    Given que el arrendatario intenta realizar un pago
    When la información de pago es incorrecta o la transacción no puede ser procesada
    Then el sistema muestra un mensaje de error indicando que el pago no pudo ser completado y sugiere revisar la información de pago o intentar nuevamente

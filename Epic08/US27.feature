@VisualizarCalculoTotal
Feature: Como arrendatario, quiero ver el cálculo total de mi reserva para conocer el costo antes de pagar.

  Scenario: Visualizar cálculo total sin descuentos
    Given que el arrendatario tiene una reserva con fechas seleccionadas
    When solicita el cálculo del costo total
    Then el sistema muestra el desglose: monto base, tarifas, impuestos y total

  Scenario: Visualizar cálculo total con código promocional
    Given que el arrendatario tiene una reserva con fechas seleccionadas
    When aplica un código promocional válido
    Then el sistema muestra el desglose con el descuento aplicado y el total actualizado

  Scenario: Visualizar cálculo con código inválido
    Given que el arrendatario tiene una reserva con fechas seleccionadas
    When aplica un código promocional inválido o expirado
    Then el sistema muestra un error y el cálculo se muestra sin descuento

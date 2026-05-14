@FiltrarVehiculosPorPrecio
Feature: Como arrendatario, quiero filtrar los vehículos por precio para encontrar uno que se ajuste a mi presupuesto.

  Scenario: Filtro aplicado correctamente
    Given que el arrendatario desea filtrar vehículos por precio
    When selecciona un rango de precios
    Then el sistema muestra vehículos que estén dentro de ese rango

  Scenario: No hay vehículos en el rango de precio
    Given que el arrendatario filtra por un rango de precio
    When no hay vehículos que coincidan con el rango seleccionado
    Then el sistema muestra un mensaje indicando que no hay vehículos disponibles en ese rango de precios

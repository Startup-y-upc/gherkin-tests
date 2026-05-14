@VerDetallesDeUnVehiculo
Feature: Como arrendatario, quiero ver los detalles de un vehículo específico para tomar una decisión informada sobre alquilarlo.

  Scenario: Detalles mostrados correctamente
    Given que el arrendatario desea ver los detalles de un vehículo
    When selecciona un vehículo de la lista de resultados de búsqueda
    Then el sistema muestra los detalles del vehículo, incluyendo marca, modelo, año, precio y reseñas

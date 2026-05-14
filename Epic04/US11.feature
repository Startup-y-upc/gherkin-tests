@VerPerfilDeUsuario
Feature: Como usuario, quiero ver mi perfil con mi información personal y de alquileres para poder confirmar que este correcta.

  Scenario: Perfil mostrado correctamente
    Given que el usuario desea ver su perfil
    When accede a la sección de perfil
    Then el sistema muestra su información personal, detalles de sus vehículos (si es propietario) y su historial de alquileres

  Scenario: Error en la carga del perfil
    Given que el usuario intenta acceder a su perfil
    When ocurre un error en la carga de los datos
    Then el sistema muestra un mensaje de error y no se carga la información del perfil

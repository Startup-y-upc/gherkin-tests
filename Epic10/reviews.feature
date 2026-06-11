@SistemaResenas
Feature: Como usuario de la plataforma, quiero crear y consultar reseñas para generar confianza entre los usuarios.

  Scenario: Crear reseña exitosamente
    Given que una reserva ha sido completada
    When el arrendatario crea una reseña con calificación y comentario
    Then el sistema guarda la reseña y la associa al vehículo y al usuario

  Scenario: Consultar reseñas de un vehículo
    Given que un vehículo tiene reseñas publicadas
    When se consulta las reseñas del vehículo
    Then el sistema muestra la lista de reseñas con la calificación promedio

  Scenario: Consultar reseñas de un usuario
    Given que un usuario tiene reseñas publicadas
    When se consulta las reseñas del usuario
    Then el sistema muestra la lista de reseñas y la calificación promedio

  Scenario: Aprobar reseña
    Given que una reseña ha sido creada
    When un administrador aprueba la reseña
    Then la reseña se publica y es visible para todos los usuarios

  Scenario: Rechazar reseña
    Given que una reseña ha sido creada
    When un administrador rechaza la reseña
    Then la reseña no se publica y se notifica al autor

  Scenario: Reportar reseña inapropiada
    Given que existe una reseña publicada
    When un usuario reporta la reseña como inapropiada
    Then la reseña se marca para revisión y se notifica al administrador

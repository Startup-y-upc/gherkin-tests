@EditarPerfilDeUsuario
Feature: Como usuario, deseo editar la información de mi perfil para mantenerla actualizada.

  Scenario: Edición exitosa del perfil
    Given que el usuario quiere editar su información personal
    When cambia la información en los campos de edición del perfil (nombre, dirección, número de teléfono, etc.)
    Then el sistema guarda los cambios y actualiza su perfil con la nueva información

  Scenario: Error en la edición del perfil
    Given que el usuario intenta actualizar su información personal
    When no proporciona datos válidos en los campos requeridos
    Then el sistema muestra un mensaje de error y no permite guardar los cambios hasta que se corrijan los datos

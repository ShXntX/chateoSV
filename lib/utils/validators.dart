class EmailValidator {
  //se define con un ? porque puede ser null
  static String? validatorEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Ingrese un Mail Valido';
    }
    //validar con expreciones regulares
    final regExpre = RegExp(
      r"^[Aa-z-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (regExpre.hasMatch(email)) {
      return null;
    } else {
      return 'Correo no valido';
    }
    //return null;
  }

  //validador para contraseñas
  static String? validatorName(String? pass) {
    if (pass == null || pass.isEmpty) {
      return 'Ingrese un Nombre Valido';
    }
    //contraseña valida
    return null;
  }

  //validador para contraseñas
  static String? validatorPass(String? pass) {
    if (pass == null || pass.isEmpty) {
      return 'Ingrese un Mail Valido';
    }

    if (pass.length < 8) {
      return 'La contrasenia debe tener almenos 8 caracteres';
    }

    if (!RegExp(r'[A-Z]').hasMatch(pass)) {
      return 'La contrasenia debe tener almenos una mayuscula';
    }

    if (!RegExp(r'[a-z]').hasMatch(pass)) {
      return 'La contrasenia debe tener almenos una minuscula';
    }

    if (!RegExp(r'[!@#\$&*~]').hasMatch(pass)) {
      return 'La contrasenia debe tener almenos un caracter especial';
    }

    //contraseña valida
    return null;
  }

  //valida que los campos coincidan
  static String? validatorPassConfirm(String? passN, String passO) {
    if (passN != passO) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }
}

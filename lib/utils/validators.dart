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

  //agregar validaion para la contraseña
}

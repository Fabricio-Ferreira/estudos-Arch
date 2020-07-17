import 'dart:async';

class PasswordsToCompare {
  String password1;
  String password2;
}

class RegexHelper {
  static isValidEmail(email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }
}

class StreamValidatorHelper {
  final validateName =
      StreamTransformer<String, String>.fromHandlers(handleData: (name, sink) {
    if (name == null || name.isEmpty) {
      sink.add(null);
      sink.addError("Campo obrigatório");
    } else
      sink.add(name);
  });

  final validateNumber = StreamTransformer<String, String>.fromHandlers(
      handleData: (number, sink) {
    if (number == null || number.isEmpty) {
      sink.add(null);
      sink.addError("Numero obrigatório");
    } else
      sink.add(number);
  });

  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (!email.contains("@") && email.length > 0) {
      sink.add(null);
      sink.addError("Insira um e-mail válido.");
    } else {
      sink.add(email);
    }
    switch (email) {
      case "null":
        {
          sink.addError("Preencha o campo.");
        }
        break;
      case "isEmpty":
        {
          sink.addError("Preencha o campo.");
        }
        break;
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.isEmpty || password == null) {
      sink.addError('Preencha o campo de senha');
    } else if (password.length < 4) {
      sink.addError('A senha deve ter mais que 4 caracteres');
    } else {
      sink.add(password);
    }
  });

  final validatePasswords =
      StreamTransformer<PasswordsToCompare, String>.fromHandlers(
          handleData: (passwords, sink) {
    if (passwords.password1 != passwords.password2) {
      sink.addError("As senhas não são iguais");
    } else {
      sink.add(passwords.password2);
    }
    switch (passwords.password2) {
      case "null":
        {
          sink.addError("Preencha o campo.");
        }
        break;
      case "isEmpty":
        {
          sink.addError("Preencha o campo.");
        }
        break;
    }
  });

  final validatePhone =
      StreamTransformer<String, String>.fromHandlers(handleData: (phone, sink) {
    if (phone == null || phone.isEmpty) {
      sink.add(null);
      sink.addError("Informe seu número de telefone");
    } else if (phone.length < 15) {
      sink.add(null);
      sink.addError("(DD)12345-6789");
    } else {
      sink.add(phone);
    }
  });

  final validateDocument = StreamTransformer<String, String>.fromHandlers(
      handleData: (document, sink) {
    if (document == null || document.isEmpty) {
      sink.add(null);
      sink.addError("Informe seu Cpf");
    } else if (document.length < 14) {
      sink.add(null);
      sink.addError("000.000.000-00");
    } else {
      sink.add(document);
    }
  });

  final validateCheckBox =
      StreamTransformer<bool, bool>.fromHandlers(handleData: (check, sink) {
    check == true
        ? sink.add(check)
        : sink.addError("Aceite o termo de política de privacidade!");
  });

  final validateDateNasc =
      StreamTransformer<String, String>.fromHandlers(handleData: (date, sink) {
    if (date == null || date.isEmpty) {
      sink.addError("Preencha com sua data de nascimento");
    } else if (date.length < 10) {
      sink.addError("31/12/2019");
    } else {
      sink.add(date);
    }
  });

  final validateTextFormField =
      StreamTransformer<String, String>.fromHandlers(handleData: (data, sink) {
    if (data == null || data.isEmpty) {
      sink.addError('Insira um código promocional');
    } else if (data.length < 4) {
      sink.addError('Código deve ter mais que 4 caracteres');
    } else {
      sink.add(data);
    }
  });

  final validateChangeMoney =
      StreamTransformer<String, String>.fromHandlers(handleData: (data, sink) {
    if (data == null || data.isEmpty) {
      sink.addError('Insira o valor para troco');
    } else {
      sink.add(data);
    }
  });

  final newValidateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (!RegexHelper.isValidEmail(email)) {
      sink.addError("Por favor, insira um e-mail válido.");
    } else {
      sink.add(email);
    }
  });

  final validateEmailWithRegex =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (!RegexHelper.isValidEmail(email)) {
      sink.addError("Por favor, insira um e-mail válido.");
    } else {
      sink.add(email);
    }
  });

  final validatePasswordLogin = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    password.isEmpty || password == null || password.length < 4
        ? sink.addError("Por favor, informe uma senha.")
        : sink.add(password);
  });

  final validateNumberCard =
      StreamTransformer<String, String>.fromHandlers(handleData: (data, sink) {
    data.isEmpty || data == null || data.length < 19
        ? sink.addError('Insira um número de cartão válido')
        : sink.add(data);
  });

  final validateExpirationDate =
      StreamTransformer<String, String>.fromHandlers(handleData: (data, sink) {
    data.isEmpty || data == null || data.length < 5
        ? sink.addError('Insira uma data válida')
        : sink.add(data);
  });

  final validateNumberCVC =
      StreamTransformer<String, String>.fromHandlers(handleData: (data, sink) {
    data.isEmpty || data == null || data.length < 3
        ? sink.addError('Insira um número de cvv válido')
        : sink.add(data);
  });

  final validateAddressComplement =
      StreamTransformer<String, String>.fromHandlers(handleData: (data, sink) {
    data.isEmpty || data == null
        ? sink.addError('Complemento Obrigatório')
        : sink.add(data);
  });
}

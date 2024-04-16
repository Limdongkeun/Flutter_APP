class FieldValidator {
  static bool validateSocialSecurityNumber(String input) {
    if(input.isEmpty) {
      return false;
    }

    Pattern pattern = r'^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])-([1-4][0-9]{6})';

    RegExp exp = RegExp(pattern.toString());


    if(exp.hasMatch(input)) {
      return true;
    }

    return false;
  }

  static bool validateEmail(String email) {
    if (email.isEmpty) {
      return false;
    }
    Pattern pattern = r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$';
    RegExp exp = RegExp(pattern.toString());

    if (exp.hasMatch(email)) {
      return true;
    } // 유효한 이메일이면 true 리턴

    return false;
  }
}
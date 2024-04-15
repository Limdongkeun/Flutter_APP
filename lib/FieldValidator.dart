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
}
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_workspace/FieldValidator.dart';

void main() {
  group('field validator test', () {
    test('validate Social Security Number', () {

    const String socialNumber = "911222-2110332";
    expect(FieldValidator.validateSocialSecurityNumber(socialNumber), true);

    const String socialNumber2 = "761031-1518312";
    expect(FieldValidator.validateSocialSecurityNumber(socialNumber2), true);

    const String socialNumber3 = "983015-1910312";
    expect(FieldValidator.validateSocialSecurityNumber(socialNumber3), false);
    });
  });
}
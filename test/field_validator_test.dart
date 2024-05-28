import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_workspace/common/FieldValidator.dart';

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

  group('field validator test', () {

    test("validateEmail", (){
      const String email1 = "goodday@gmail.com";

      expect(FieldValidator.validateEmail(email1), true); // 통과할거로 예상하고 통과

      //실패하는 케이스
      const  String email2 = "badday#@gmail.com";

      expect(FieldValidator.validateEmail(email2), true , reason: '# is a not valid character'); // 통과할 거로 예상했으나 통과하지 못하기에 test fail
    });
  });
}
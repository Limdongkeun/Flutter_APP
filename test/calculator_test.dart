import 'package:flutter_workspace/common/Calcuator.dart';
import 'package:test/test.dart';
void main() {

  group('calculator', () {
    Calculator cal = Calculator();

    test('add should be equal to a + b', () {
    expect(cal.add(20, 30), 50);
    });

    test('minus should be equal to a - b', () {
    expect(cal.minus(30, 20), 10);
    });

    test('square should be equal to a * a', () {
    expect(cal.square(10), 10 * 10);
    });

  });

}
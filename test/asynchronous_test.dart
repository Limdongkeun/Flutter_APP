
import 'package:flutter_test/flutter_test.dart';
/*
 * 비동기 테스트
 * 둘 다 퓨처의 인스턴스지만 같은 인스턴스는 아니라서 실패
 * 퓨처를 테스트 할 때는 expect(실제값, 기대값) 중 기대값을 completion
 */
void main() {
  // 실패하는 코드
  test('new Future.value() returns the value', () {
    var value = Future.value(10);
    expect(value, 10);
  });

  // 실패하는 코드
  test('new Future.value() returns the value', () {
    var value = Future.value(10);
    expect(value, Future.value(10));
  });

  // 성공하는 코드
  test('new Future.value() returns the value with completion', () {
    var value = Future.value(10);
    expect(value, completion(10));
  });
}
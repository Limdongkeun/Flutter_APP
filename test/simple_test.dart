
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should be lowercase', () { //어떤 테스트를 할지 설명하고, 안에 있는 테스트를 실행
    String hello = "Hello World";

    expect(hello.toLowerCase(), "hello world"); //테스트를 실행했을 때 기대값과 실제값을 비교

  });

  test('should contain name', () {
    String hello = "Hello World, Mike";

    expect(hello.contains('mike'), true); // 테스트 실패! 소문자 mike는 찾을 수 없다.
  });
}
/*
 * 테스트 코드는 main()에 적어야 한다
 * 테스트 코드는 크게 test() 와 expect() 함수로 되어 있다
 * test()는 테스트를 실핼 할 때 쓰이는 함수
 * expect()는 테스트 실행값과 기대값을 비교
 */
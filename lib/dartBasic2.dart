import 'dart:isolate';

void main() {
  Map<String, int> map = Map<String, int>();
  // 키가 없을 때만 값을 추가
  map.putIfAbsent("height", () => 175);
  map.putIfAbsent("height", () => 180);
  print(map["height"]); // 175 출력

  // 이미 키가 있어도 값을 추가
  map["height"] = 190;
  print(map["height"]); // 190 출력
  
  //다트 Isolate
  Isolate.spawn(sendMessage, 'Hello');
  Isolate.spawn(sendMessage, 'Greetings');
  Isolate.spawn(sendMessage, 'Welcome');
  first();
  second();
  third();
}

/*
 * 다트는 싱글 스레드 이기 때문에 여러 스레드를 만들 수 없다
 * 다트에선 Isolate를 만들어 병렬 처리를 한다
 * 스레드 안에 Isolate가 여럭 있는 걸 상상하면 된다
 */
void sendMessage(var message) {
  print('This is a ${message}');
}

/*
 * 비동기 처리 딜레이를 만든다
 */
void first() {
  print("First");
}
void second() async { // async는 비동기 처리하라는 의미.
  Future.delayed(Duration(seconds: 2), () { // 2초 딜레이
    print("Second");
  });
}
void third() {
  print("Third");
}

void main() {
  Map<String, int> map = Map<String, int>();
  // 키가 없을 때만 값을 추가
  map.putIfAbsent("height", () => 175);
  map.putIfAbsent("height", () => 180);
  print(map["height"]); // 175 출력

  // 이미 키가 있어도 값을 추가
  map["height"] = 190;
  print(map["height"]); // 190 출력

  first();
  second();
  third();
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
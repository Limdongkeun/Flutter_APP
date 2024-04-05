void main() {
  // var stream = Stream.periodic(const Duration(seconds: 1), (x) => x).take(10); // 1. 스트림 만들기 - 1초마다 데이터를 1개씩 만듬, 10개 까지만.
  // stream.listen(print); // 2. 이벤트 처리
  // stream.listen((int number) => print(number + number)); // 2. 이벤트 처리
/*
 * 반복적인 작업을 하고 싶다면 Stream.periodic()을 쓰고,
 * 비동기 처리를 한다면 Stream.fromFuture()를 쓰도록
 */

  Stream.fromIterable([1,2,3,4,5]) // 일반적인 데이터를 다룰 때
      .listen((int x) => print('iterable : ${x}'));
  Stream.periodic(Duration(seconds: 1), (x) => x) // 1초에 1번씩 동작
      .take(5) // 5개까지만 데이터를 처리함.
      .listen((x) => print('take : ${x}'));
  Stream.fromFuture(getData()) // 비동기 데이터를 처리할 때
      .listen((x) => print('from Future : ${x}'));
}
Future<String> getData() async {
  await Future.delayed(Duration(seconds: 5)); // 5초간 대기
  print("Fetched Data");
  return "5초 기다렸다가 온 데이터입니다";
}
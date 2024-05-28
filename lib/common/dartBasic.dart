


void main() {
  int num = 10;
  double height = 175.3;
  String name = "Mike";
  var world = "Hello world"; // 동적 타입, 타입 추론
  var age = 78;
  print('num $num');


  //리스트
  var numbers = [10, 20, 30];
  var countries = ["KOREA", "USA", "JAPAN", 10];
  print('리스트 첫번째 countries ${countries[0]}');

  var combineResult = combine(10, 20);
  print('타입 추론 result $combineResult');

  var abbCombineResult = addCombine(10, 20);
  print('타입 지정 result $abbCombineResult');

  Point p = Point(10, 30);
  print('p.x ${p.x}');
  print('p.y ${p.y}');

  var origin = Point.origin();
  print('Point.origin 처음 초기화 한 x 값 ${origin.x}');
  print('Point.origin 처음 초기화 한 y 값 ${origin.y}');

  Map<String, int> json = Map();
  json['x'] = 15;
  json['y'] = 20;
  
  var point = Point.fromJson(json);
  print("point x : ${point.x}, y: ${point.y}");
}
//타입 추론
combine(a,b) {
  return a + b;
}

//타입 지정
addCombine(int a, int b) {
  return a + b;

}

class Point{
   var x;
   var y;
  Point(var x, var y) {
    this.x = x;
    this.y = y;
  }
   // 생성자를 이렇게 축약해서 쓸 수 있다
   // Point(var this.x, var this.y);

  Point.origin() {
    x = 0;
    y = 0;
  }

  //json으로 파싱
   Point.fromJson(Map<String, num> json)
       : x = json['x'],
         y = json['y'] {
     print('In Point.fromJson(): ($x, $y)');
   }
}
import 'dart:async';

void main() {
  StreamController ctrl = StreamController();

  ctrl.stream.listen((event) {
    print(event);
  });

  ctrl.add(10);
  ctrl.add("Good morning");
  ctrl.add({"age" : 50, "name" : "Young"});

  ctrl.close();
}
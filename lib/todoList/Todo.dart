class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);


  Todo.fromJson(Map json)
    : userId = json['userId'],
      id = json['id'],
      title = json['title'],
      completed = json['completed'];
}
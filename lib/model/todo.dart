class ToDo {
  int id;
  String todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: 1, todoText: "Check Mail 01", isDone: true),
      ToDo(id: 2, todoText: "Check Mail 02", isDone: false),
      ToDo(id: 3, todoText: "Check Mail 03", isDone: true),
      ToDo(id: 4, todoText: "Check Mail 04", isDone: false),
      ToDo(id: 5, todoText: "Check Mail 05", isDone: true),
      ToDo(id: 6, todoText: "Check Mail 06", isDone: false),
      ToDo(id: 7, todoText: "Check Mail 07", isDone: true),
      ToDo(id: 8, todoText: "Check Mail 08", isDone: false),
    ];
  }
}

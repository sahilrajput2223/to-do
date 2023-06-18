class ToDo {
  int? id;
  String? todoText;
  bool? isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: 1, todoText: "Check Mail 1", isDone: false),
      ToDo(id: 2, todoText: "Check Mail 2", isDone: false),
      ToDo(id: 3, todoText: "Check Mail 3", isDone: true),
      ToDo(id: 4, todoText: "Check Mail 4", isDone: false),
      ToDo(id: 5, todoText: "Check Mail 5", isDone: true),
      ToDo(id: 6, todoText: "Check Mail 6", isDone: false)
    ];
  }
}
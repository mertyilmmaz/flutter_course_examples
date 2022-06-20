class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;
  PostModel2(
    this.userId,
    this.id,
    this.title,
    this.body,
  );
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}

class PostModel5 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body}) {
    int _userId = userId;
    int _id = id;
    String _title = title;
    String _body = body;
  }
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6(
      {int userId = 0, int id = 0, String title = '', String body = ''}) {
    int _userId = userId;
    int _id = id;
    String _title = title;
    String _body = body;
  }
}

class PostModel7 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel7({this.userId, this.id, this.title, this.body});

  PostModel7 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel7(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}

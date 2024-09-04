class PostModel {
  String title;
  String body;
  int userId;

  PostModel({required this.title, required this.body, required this.userId});

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'userId': userId,
    };
  }
}

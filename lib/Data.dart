class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  final DateTime date;
  Post(this.userId, this.id, this.title, this.body, this.date);
}

class User {
  final int id;
  final String title;
  final String body;
  User(this.id, this.title, this.body);
}
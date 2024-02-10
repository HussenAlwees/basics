class Post {
  String? title;
  String? userId;
  String? description;

  Post({
    required this.title,
    required this.userId,
    required this.description,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'],
      userId: json['userId'].toString(),
      description: json['body'],
    );
  }
}

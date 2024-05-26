class Movie {
  final String title;
  final String backDropPath;

  Movie({
    required this.title,
    required this.backDropPath,
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['title'],
      backDropPath: map['backdrop_path'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'backDropPath': backDropPath,
    };
  }
}

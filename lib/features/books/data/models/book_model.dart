class BookModel {
  final String bookTitle;
  final String img;
  final String bookAuthor;
  final String bookDescription;

  BookModel({
    required this.bookTitle,
    required this.img,
    required this.bookAuthor,
    required this.bookDescription,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      bookTitle: json['book_title'] ?? '',
      img: json['book_img'] ?? '',
      bookAuthor: json['book_author'] ?? '',
      bookDescription: json['description'] ?? '',
    );
  }
}

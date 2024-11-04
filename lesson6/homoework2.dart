class LiteraryBook{
  String name;
  String author;
  String genre;

  LiteraryBook({
    required this.name,
    required this.author,
    required this.genre,
  });

  @override
  String toString() {
    return "--------------$name--------------\nAUTHOR:    $author\nGENRE:     $genre";
  }

  void editAuthor(String newAuthor){
    author = newAuthor;
  }

}

void main(){
  LiteraryBook book1 = LiteraryBook(name: "Boburnoma", author: "Bobur", genre: "Tarixiy-biografik");
  LiteraryBook book2 = LiteraryBook(name: "Mitti yulduz", author: "A. Oripov", genre: "She'riy");

  print(book1.toString());
  print(book2.toString());

  book1
  ..author = "Zahiriddin Muhammad Bobur";

  book2.editAuthor("Abdulla Oripov");

  print("\n\nCHANGED CLASS:");
  print(book1.toString());
  print(book2.toString());

}
class Book {
  static int countBooks = 0;

  String? name;
  String? author;
  int? pages;

  Book({this.name, this.author, this.pages}){
    countBooks ++;
  }

  set setNewName(String newName){
    name = newName;
  }

  set setNewAuthor(String newAuthor){
    author = newAuthor;
  }

  set setNewPages(int newPages){
    pages = newPages;
  }

  @override
  String toString() => 'Book(name: $name, author: $author, pages: $pages)';
}

void main(){
  Book book1 = Book(name: "Ufq", author: "Said Ahmad", pages: 500);
  print(book1.toString());

  book1.setNewName = "Ikki eshik orasi";
  book1.setNewAuthor = "O'tkir Hoshimov";
  book1.setNewPages = 423;

  print(book1.toString());
}
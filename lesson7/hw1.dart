class Book{
  String? name;
  String? author;
  int? pages;

  Book({this.name, this.author, this.pages});

  Book.shortBook(int pages){
    if(pages < 100){
      this.pages = pages;
    }else{
      throw Exception("Pages must be less than 100!");
    }
  }

  void BooksInfo(){
    print("NAME:  $name\nAUTHOR:  $author\nPAGES:  $pages");
  }
}

void main(){
  Book book1 = Book(name: "Ufq", author: "Said Ahmad", pages: 500);
  Book book2 = Book.shortBook(46);

  book1.BooksInfo();
  book2.BooksInfo();
}
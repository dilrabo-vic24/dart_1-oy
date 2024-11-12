void main(){
  List<Map<String, dynamic>> books = [{'title': 'Book 1', 'price': 1500},
                                      {'title': 'Book 2', 'price': 500},
                                      {'title': 'Book 3', 'price': 900}];

  cheapBooks(books);
}

void cheapBooks(List<Map<String, dynamic>> books){
  List<Map<String, dynamic>> cheapBooks = books.where((book) => (book['price'] < 1000)).toList();
  print(cheapBooks);
}
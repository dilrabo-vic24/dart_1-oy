void main() {
  Map<String, Set<String>> library = {
    'Science': {'The Cosmos', 'Organic Chemistry', 'Introduction to Quantum Physics'},
    'Programming': {'Mastering Dart', 'The Cosmos', 'Artificial Intelligence Principles'},
    'Literature': {'Shakespeare\'s Sonnets', 'Classic Novels', 'Organic Chemistry'},
    'Mathematics': {'Advanced Calculus', 'The Cosmos', 'Linear Algebra'}
  };

  Map<String, int> bookCategoryCount = {};

  library.forEach((category, books) {
    for (String book in books) {
      if (bookCategoryCount.containsKey(book)) {
        bookCategoryCount[book] = bookCategoryCount[book]! + 1;
      } else {
        bookCategoryCount[book] = 1;
      }
    }
  });

  print('Books in multiple categories:');
  bookCategoryCount.forEach((book, count) {
    if (count > 1) {
      print('$book is in $count categories');
    }
  });
}

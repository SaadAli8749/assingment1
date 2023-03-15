class Book {
  late String _title;
  late String _author;
  late String _publisher;
  late double _price;

  String get title => _title;
  set title(String value) => _title = value;

  String get author => _author;
  set author(String value) => _author = value;

  String get publisher => _publisher;
  set publisher(String value) => _publisher = value;

  double get price => _price;
  set price(double value) => _price = value;

  double calculateDiscountedPrice(double percentage) {
    double discountAmount = (_price * percentage) / 100;
    double discountedPrice = _price - discountAmount;
    return discountedPrice;
  }
}

void main() {
  Book book = Book();

  book.title = " A Practitioner's Approach";
  book.author = "Roger S. Pressman";
  book.publisher = "McGraw-Hill Education";
  book.price = 99.99;

  double discountPercentage = 20.0;
  double discountedPrice = book.calculateDiscountedPrice(discountPercentage);
  print(
      "The discounted price of ${book.title} is \$$discountedPrice (${discountPercentage}% off).");
}

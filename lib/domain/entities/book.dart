import 'product.dart';

class Book extends Product {
  final String autor;

  Book(String name, double price, this.autor) : super(name, price);
}

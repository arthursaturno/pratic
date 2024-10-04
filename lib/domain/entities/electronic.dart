import 'product.dart';

class Electronic extends Product {
  final String brand;

  Electronic(String name, double price, this.brand) : super(name, price);
}

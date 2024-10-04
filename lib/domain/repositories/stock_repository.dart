import 'package:pratic/domain/entities/product.dart';

abstract class StockRepository {
  Future<bool> verifyStock(Product product);
}

import 'package:pratic/domain/entities/product.dart';
import 'package:pratic/domain/repositories/stock_repository.dart';

class VerifyStock {
  final StockRepository repository;

  VerifyStock(this.repository);

  Future<bool> call(Product product) async {
    return await repository.verifyStock(product);
  }
}

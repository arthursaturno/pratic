import 'dart:async';

import 'package:pratic/domain/entities/product.dart';
import 'package:pratic/domain/repositories/stock_repository.dart';

class StockRepositoryImpl implements StockRepository {
  @override
  Future<bool> verifyStock(Product product) async {
    print('Verificando estoque para ${product.name}...');
    await Future.delayed(Duration(seconds: 2));
    bool inStock = DateTime.now().second % 2 == 0;
    if (inStock) {
      print('${product.name} está em estoque.');
    } else {
      print('${product.name} está fora de estoque.');
    }
    return inStock;
  }
}

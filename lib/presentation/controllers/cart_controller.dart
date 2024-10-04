import 'package:pratic/core/usecases/verify_strock.dart';
import 'package:pratic/domain/entities/product.dart';

class CarController {
  final VerifyStock verifyStock;

  CarController(this.verifyStock);

  Future<void> finishBuy(List<Product> products) async {
    double total = 0;
    for (var product in products) {
      bool available = await verifyStock(product);
      if (available) {
        total += product.price;
      } else {
        print(
            'Produto ${product.name} não foi adicionado ao total por falta de estoque.');
      }
    }
    print('Preço total da compra: R\$${total.toStringAsFixed(2)}');
  }
}

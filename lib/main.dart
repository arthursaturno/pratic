import 'package:pratic/core/usecases/verify_strock.dart';
import 'package:pratic/data/repositories/stock_repository_impl.dart';
import 'package:pratic/domain/entities/book.dart';
import 'package:pratic/domain/entities/electronic.dart';
import 'package:pratic/presentation/controllers/cart_controller.dart';

void main() async {
  // Repositório e UseCase
  var stockRepository = StockRepositoryImpl();
  var verifyStockUseCase = VerifyStock(stockRepository);

  // Controller
  var carController = CarController(verifyStockUseCase);

  // Criando alguns produtos
  var products = [
    Electronic('Smartphone', 1200.0, 'Samsung'),
    Book('O Senhor dos Anéis', 50.0, 'J.R.R. Tolkien'),
    Electronic('Notebook', 3500.0, 'Dell'),
    Book('1984', 30.0, 'George Orwell'),
  ];

  // Finalizando a compra
  await carController.finishBuy(products);
}

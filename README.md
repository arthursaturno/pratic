Resumo do Funcionamento

1-Product: Entidade que representa um produto.

2-StockRepository: Interface que define o contrato para verificar estoque.

3-VerifyStock: Caso de uso que verifica o estoque de um produto, utilizando o repositório.

4-StockRepositoryImpl: Implementação concreta do repositório que simula a verificação de estoque.

5-CartController: Controlador que usa o caso de uso para verificar o estoque de uma lista de produtos e calcular o total da compra.

6-main.dart: Integra todas as partes e executa a verificação de estoque e a compra dos produtos.

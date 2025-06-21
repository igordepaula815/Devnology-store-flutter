import 'package:flutter/material.dart';
import '../models/item_carrinho.dart';

class CarrinhoWidget extends StatelessWidget {
  final List<ItemCarrinho> itens;
  final void Function(int produtoId) removerDoCarrinho;
  final double total;

  const CarrinhoWidget({
    Key? key,
    required this.itens,
    required this.removerDoCarrinho,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (itens.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(8),
        child: Text('Carrinho vazio'),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Itens no Carrinho',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        ...itens.map(
          (item) => ListTile(
            title: Text(item.produto.nome),
            subtitle: Text('Quantidade: ${item.quantidade}'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: () => removerDoCarrinho(item.produto.id),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Total: R\$ ${total.toStringAsFixed(2)}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ],
    );
  }
}

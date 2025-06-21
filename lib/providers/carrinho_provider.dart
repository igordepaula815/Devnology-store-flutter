import 'package:flutter/material.dart';
import '../models/item_carrinho.dart';
import '../models/produto.dart';

class CarrinhoProvider with ChangeNotifier {
  final List<ItemCarrinho> _itens = [];

  List<ItemCarrinho> get itens => List.unmodifiable(_itens);

  // Adiciona produto ao carrinho, incrementa quantidade se já existir
  void adicionarItem(Produto produto) {
    final index = _itens.indexWhere((item) => item.produto.id == produto.id);
    if (index >= 0) {
      _itens[index].quantidade += 1;
    } else {
      _itens.add(ItemCarrinho(produto: produto, quantidade: 1));
    }
    notifyListeners();
  }

  // Remove uma unidade do item, ou remove o item se quantidade for 1
  void removerItem(int produtoId) {
    final index = _itens.indexWhere((item) => item.produto.id == produtoId);
    if (index >= 0) {
      if (_itens[index].quantidade > 1) {
        _itens[index].quantidade -= 1;
      } else {
        _itens.removeAt(index);
      }
      notifyListeners();
    }
  }

  // Limpa todo o carrinho
  void limparCarrinho() {
    _itens.clear();
    notifyListeners();
  }

  // Calcula o total do carrinho considerando quantidade e preço
  double calcularTotal() {
    double total = 0;
    for (var item in _itens) {
      total += item.produto.preco * item.quantidade;
    }
    return total;
  }
}

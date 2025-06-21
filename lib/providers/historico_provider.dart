import 'package:flutter/material.dart';
import '../models/pedido.dart';

class HistoricoProvider with ChangeNotifier {
  final List<Pedido> _historico = [];

  List<Pedido> get historico => List.unmodifiable(_historico);

  void adicionarPedido(Pedido pedido) {
    _historico.add(pedido);
    notifyListeners();
  }

  void limparHistorico() {
    _historico.clear();
    notifyListeners();
  }
}

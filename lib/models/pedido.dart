import 'produto.dart';

class Pedido {
  final List<Produto> produtos;
  final String nomeCliente;
  final String email;
  final String endereco;
  final String pagamento;
  final DateTime data;
  final bool desconto;

  Pedido({
    required this.produtos,
    required this.nomeCliente,
    required this.email,
    required this.endereco,
    required this.pagamento,
    required this.data,
    this.desconto = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'produtos': produtos.map((p) => p.toJson()).toList(),
      'nomeCliente': nomeCliente,
      'email': email,
      'endereco': endereco,
      'pagamento': pagamento,
      'data': data.toIso8601String(),
    };
  }

  factory Pedido.fromMap(Map<String, dynamic> map) {
    return Pedido(
      produtos: List<Produto>.from(
        map['produtos'].map((p) => Produto.fromJson(p)),
      ),
      nomeCliente: map['nomeCliente'],
      email: map['email'],
      endereco: map['endereco'],
      pagamento: map['pagamento'],
      data: DateTime.parse(map['data']),
    );
  }

  get id => null;
}

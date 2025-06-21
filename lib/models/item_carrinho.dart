import 'produto.dart';

class ItemCarrinho {
  final Produto produto;
  int quantidade;

  ItemCarrinho({required this.produto, this.quantidade = 1});

  Map<String, dynamic> toJson() => {
    'produto': produto.toJson(),
    'quantidade': quantidade,
  };

  factory ItemCarrinho.fromJson(Map<String, dynamic> json) => ItemCarrinho(
    produto: Produto.fromJson(json['produto']),
    quantidade: json['quantidade'],
  );
}

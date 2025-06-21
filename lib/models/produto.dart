class Produto {
  final int id;
  final String nome;
  final String fornecedor; // Brasil ou Europa
  final String descricao;
  final String categoria;
  final String imagem;
  final double preco;
  final String material;
  final String departamento;

  Produto({
    required this.id,
    required this.nome,
    required this.fornecedor,
    required this.descricao,
    required this.categoria,
    required this.imagem,
    required this.preco,
    required this.material,
    required this.departamento, required bool desconto,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'fornecedor': fornecedor,
      'descricao': descricao,
      'categoria': categoria,
      'imagem': imagem,
      'preco': preco,
      'material': material,
      'departamento': departamento,
    };
  }

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      id: json['id'],
      nome: json['nome'],
      fornecedor: json['fornecedor'],
      descricao: json['descricao'],
      categoria: json['categoria'],
      imagem: json['imagem'],
      preco: (json['preco'] as num).toDouble(),
      material: json['material'],
      departamento: json['departamento'],
      desconto: json['desconto'],
    );
  }
}

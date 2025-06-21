import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/data/produtos_brasileiros.dart';
import 'package:flutter_application_1/data/produtos_europeus.dart';

import '../models/produto.dart';
import '../providers/carrinho_provider.dart';

import 'carrinho_screen.dart';
import 'finalizar_compra_screen.dart';
import 'historico_compras_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _busca = '';
  String _fornecedorSelecionado = 'Todos';

  static const Color primaryBlue = Colors.blue; // Cor azul padrão Flutter

  List<Produto> get _todosProdutos => [
        ...produtos_brasileiros,
        ...produtos_europeus,
      ];

  List<Produto> _filtrarProdutos() {
    return _todosProdutos.where((produto) {
      final buscaMatch =
          produto.nome.toLowerCase().contains(_busca.toLowerCase());
      final fornecedorMatch = _fornecedorSelecionado == 'Todos' ||
          produto.fornecedor == _fornecedorSelecionado;
      return buscaMatch && fornecedorMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final carrinhoProvider = Provider.of<CarrinhoProvider>(context);
    final produtosFiltrados = _filtrarProdutos();

    final produtosBrasil =
        produtosFiltrados.where((p) => p.fornecedor == 'Brasil').toList();
    final produtosEuropa =
        produtosFiltrados.where((p) => p.fornecedor == 'Europa').toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: primaryBlue),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Devnology Store',
              style: TextStyle(
                color: primaryBlue,
                fontWeight: FontWeight.bold,
                fontSize: 32, // Tamanho h1
              ),
            ),
            SizedBox(height: 16), // Espaçamento abaixo do título
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.history, color: primaryBlue),
            tooltip: 'Histórico de Compras',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const HistoricoComprasScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: primaryBlue),
            tooltip: 'Abrir Carrinho',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const CarrinhoScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Campo de busca
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Buscar produto...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (val) {
                setState(() {
                  _busca = val;
                });
              },
            ),
          ),
          // Filtro de fornecedor
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButtonFormField<String>(
              value: _fornecedorSelecionado,
              decoration: const InputDecoration(
                labelText: 'Fornecedor',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'Todos', child: Text('Todos')),
                DropdownMenuItem(value: 'Brasil', child: Text('Brasil')),
                DropdownMenuItem(value: 'Europa', child: Text('Europa')),
              ],
              onChanged: (val) {
                if (val != null) {
                  setState(() {
                    _fornecedorSelecionado = val;
                  });
                }
              },
            ),
          ),
          const SizedBox(height: 8),

          // Lista de produtos
          Expanded(
            child: produtosFiltrados.isEmpty
                ? const Center(child: Text('Nenhum produto encontrado.'))
                : Row(
                    children: [
                      if (_fornecedorSelecionado == 'Todos' ||
                          _fornecedorSelecionado == 'Brasil')
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '🇧🇷 Brasileiros',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: produtosBrasil.length,
                                  itemBuilder: (context, index) {
                                    return _buildProdutoTile(
                                      produtosBrasil[index],
                                      carrinhoProvider,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (_fornecedorSelecionado == 'Todos' ||
                          _fornecedorSelecionado == 'Europa')
                        Expanded(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '🇪🇺 Europeus',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: produtosEuropa.length,
                                  itemBuilder: (context, index) {
                                    return _buildProdutoTile(
                                      produtosEuropa[index],
                                      carrinhoProvider,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.blue.shade50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Itens: ${carrinhoProvider.itens.length}'),
            Text(
              'Total: R\$ ${carrinhoProvider.calcularTotal().toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: carrinhoProvider.itens.isEmpty
                  ? null
                  : () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => FinalizarCompraScreen(
                            carrinho: carrinhoProvider.itens
                                .map((item) => item.produto)
                                .toList(),
                            onVoltar: () => Navigator.of(context).pop(),
                          ),
                        ),
                      );
                    },
              child: const Text('Finalizar'),
            ),
          ],
        ),
      ),
    );
  }

  // Widget de cada produto
  Widget _buildProdutoTile(
      Produto produto, CarrinhoProvider carrinhoProvider) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: Image.network(
          produto.imagem,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.broken_image),
        ),
        title: Text(
          produto.nome,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          '${produto.fornecedor} - R\$ ${produto.preco.toStringAsFixed(2)}',
        ),
        trailing: IconButton(
          icon: const Icon(Icons.add_shopping_cart),
          onPressed: () {
            carrinhoProvider.adicionarItem(produto);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${produto.nome} adicionado ao carrinho'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/carrinho_provider.dart';
import '../screens/finalizar_compra_screen.dart';

class CarrinhoScreen extends StatelessWidget {
  const CarrinhoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final carrinho = Provider.of<CarrinhoProvider>(context);
    final itens = carrinho.itens;

    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho')),
      body: itens.isEmpty
          ? const Center(child: Text('Seu carrinho está vazio'))
          : ListView.builder(
              itemCount: itens.length,
              itemBuilder: (context, index) {
                final item = itens[index];
                return ListTile(
                  leading: Image.network(
                    item.produto.imagem,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image),
                  ),
                  title: Text(item.produto.nome),
                  subtitle: Text('Quantidade: ${item.quantidade}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle, color: Colors.red),
                        onPressed: () {
                          carrinho.removerItem(item.produto.id);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle, color: Colors.green),
                        onPressed: () {
                          carrinho.adicionarItem(item.produto);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Total: R\$ ${carrinho.calcularTotal().toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: itens.isEmpty
                  ? null
                  : () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => FinalizarCompraScreen(
                            carrinho: itens.map((e) => e.produto).toList(),
                            onVoltar: () => Navigator.of(context).pop(),
                          ),
                        ),
                      );
                    },
              child: const Text('Finalizar Compra'),
            ),
          ],
        ),
      ),
    );
  }
}

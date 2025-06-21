import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/historico_provider.dart';
import '../models/pedido.dart';

class HistoricoComprasScreen extends StatelessWidget {
  const HistoricoComprasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final historico = Provider.of<HistoricoProvider>(context).historico;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Compras'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // azul padrão
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              onPressed: () {
                Navigator.pop(context); // voltar para tela anterior
              },
              child: const Text(
                'Voltar para Produtos',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
      body: historico.isEmpty
          ? const Center(child: Text('Nenhuma compra realizada ainda.'))
          : Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 cards por linha, igual a foto
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.2, // ajustar proporção do card
                ),
                itemCount: historico.length,
                itemBuilder: (context, index) {
                  final Pedido pedido = historico[index];
                  final dataFormatada = DateFormat('dd/MM/yyyy, HH:mm:ss').format(pedido.data);
                  final total = pedido.produtos.fold<double>(
                    0,
                    (previousValue, p) => previousValue + p.preco,
                  );

                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                      border: Border(
                        left: BorderSide(color: Colors.blue, width: 3), // borda azul lateral
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pedido #${pedido.id}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black87, fontSize: 14),
                            children: [
                              const TextSpan(text: 'Data: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: dataFormatada),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black87, fontSize: 14),
                            children: [
                              const TextSpan(text: 'Cliente: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: pedido.nomeCliente),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black87, fontSize: 14),
                            children: [
                              const TextSpan(text: 'Total: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'R\$ ${total.toStringAsFixed(2)}'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Itens:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            physics: const ClampingScrollPhysics(),
                            children: pedido.produtos
                                .map(
                                  (p) => Text(
                                    '${p.nome} - R\$ ${p.preco.toStringAsFixed(2)}',
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}

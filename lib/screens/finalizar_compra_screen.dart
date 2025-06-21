import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/produto.dart';
import '../models/pedido.dart';
import '../providers/carrinho_provider.dart';
import '../providers/historico_provider.dart';

class FinalizarCompraScreen extends StatefulWidget {
  final List<Produto> carrinho;
  final VoidCallback onVoltar;

  const FinalizarCompraScreen({
    Key? key,
    required this.carrinho,
    required this.onVoltar,
  }) : super(key: key);

  @override
  State<FinalizarCompraScreen> createState() => _FinalizarCompraScreenState();
}

class _FinalizarCompraScreenState extends State<FinalizarCompraScreen> {
  final _formKey = GlobalKey<FormState>();
  String nome = '';
  String email = '';
  String endereco = '';
  String pagamento = 'cartao';

  void _handleSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      final pedido = Pedido(
        produtos: widget.carrinho,
        nomeCliente: nome,
        email: email,
        endereco: endereco,
        pagamento: pagamento,
        data: DateTime.now(),
      );

      Provider.of<HistoricoProvider>(context, listen: false)
          .adicionarPedido(pedido);
      Provider.of<CarrinhoProvider>(context, listen: false).limparCarrinho();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Compra finalizada com sucesso!')),
      );

      widget.onVoltar();
    }
  }

  @override
  Widget build(BuildContext context) {
    double total =
        widget.carrinho.fold(0, (sum, p) => sum + (p.preco));

    return Scaffold(
      appBar: AppBar(title: const Text('Finalizar Compra')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Resumo do Pedido',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...widget.carrinho.map((p) =>
                Text('${p.nome} - R\$ ${p.preco.toStringAsFixed(2)}')),
            const SizedBox(height: 8),
            Text(
              'Total: R\$ ${total.toStringAsFixed(2)}',
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text('Dados do Cliente',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Nome Completo'),
                    validator: (val) =>
                        (val == null || val.isEmpty) ? 'Informe seu nome' : null,
                    onChanged: (val) => nome = val,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val == null || val.isEmpty) return 'Informe seu email';
                      final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                      if (!emailRegex.hasMatch(val)) return 'Email inválido';
                      return null;
                    },
                    onChanged: (val) => email = val,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Endereço'),
                    maxLines: 2,
                    validator: (val) => (val == null || val.isEmpty)
                        ? 'Informe seu endereço'
                        : null,
                    onChanged: (val) => endereco = val,
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: pagamento,
                    decoration:
                        const InputDecoration(labelText: 'Forma de Pagamento'),
                    items: const [
                      DropdownMenuItem(
                          value: 'cartao', child: Text('Cartão de Crédito')),
                      DropdownMenuItem(
                          value: 'boleto', child: Text('Boleto')),
                      DropdownMenuItem(value: 'pix', child: Text('PIX')),
                    ],
                    onChanged: (val) {
                      if (val != null) pagamento = val;
                    },
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                          onPressed: widget.onVoltar,
                          child: const Text('Voltar')),
                      ElevatedButton(
                          onPressed: _handleSubmit,
                          child: const Text('Confirmar Compra')),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  // IMPORT ESSENCIAL

import 'screens/home_screen.dart';
import 'providers/carrinho_provider.dart';
import 'providers/historico_provider.dart';

void main() {
  runApp(const MyAppWrapper());
}

// Wrapper para usar o MultiProvider
class MyAppWrapper extends StatelessWidget {
  const MyAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CarrinhoProvider()),
        ChangeNotifierProvider(create: (_) => HistoricoProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

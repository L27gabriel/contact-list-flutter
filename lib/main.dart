import 'package:flutter/material.dart';
import 'package:lista_de_contato/pages/list_contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Contato',
      theme: ThemeData(),
      home: const ListContactPage(),
    );
  }
}

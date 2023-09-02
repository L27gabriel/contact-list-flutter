import 'package:flutter/material.dart';
import 'package:lista_de_contato/data/dummy_users.dart';
import 'package:lista_de_contato/widgets/drawer_menu.dart';
import 'package:lista_de_contato/widgets/user_card.dart';

class ListContactPage extends StatelessWidget {
  const ListContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Color(0xFF93C6E7),
        foregroundColor: Colors.white,
        title: const Text("Lista de Contato"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) => UserCard(user: users.values.elementAt(i)),
        itemCount: users.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF8EA7E9),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        color: Color(0xFF93C6E7),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

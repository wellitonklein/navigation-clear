import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Listagem de clientes')),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/products');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Ir para listagem de produtos'),
            ),
          ),
        ],
      ),
    );
  }
}

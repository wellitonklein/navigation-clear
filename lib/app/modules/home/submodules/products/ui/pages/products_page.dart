import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Listagem de produtos')),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/people');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Ir para listagem de clientes'),
            ),
          ),
        ],
      ),
    );
  }
}

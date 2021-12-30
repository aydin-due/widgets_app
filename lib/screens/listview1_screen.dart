import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['ama', 'me', 'mie'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: Center(
          child: ListView(
        children: [
          ...options
              .map(// ... (spread) extrae los elementos de la lista
                  (e) => ListTile(
                        title: Text(e),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ))
              .toList() //map regresa iterable, asi q se convierte a lista
        ],
      )),
    );
  }
}

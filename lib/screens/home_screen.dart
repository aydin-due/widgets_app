import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('ruta'),
                  leading: const Icon(Icons.access_alarm),
                  onTap: () {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
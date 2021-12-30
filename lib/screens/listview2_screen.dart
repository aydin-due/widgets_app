import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['ama', 'me', 'mie'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 2'),
          elevation: 0,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView.separated(
          // separated has separatorBuiler & builder hasn't
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.deepOrangeAccent,
            ),
            onTap: () {
              final opt = options[index];
              print(opt);
            },
          ),
          separatorBuilder: (_, __) =>
              const Divider(), //se usa _ cuando no se usan los args
        ));
  }
}

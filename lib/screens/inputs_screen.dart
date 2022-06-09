import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & '),
      ),
      body: SingleChildScrollView(
        //como listview pero con 1 solo hijo
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: const [
            // TextField() //no necesita q lo agrupe 1 form
            CustomInputField(labelText: 'Nombre', hintText: 'Nombre de usuario',)
          ]),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

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
          child: Column(children: [
            // TextField() //no necesita q lo agrupe 1 form
            TextFormField(
              // recomendado xq se le puede agregar validaciones automáticas (más interacciones)
              autofocus: true,
              initialValue: 'si',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) { //cada q se cambia algún caracter, se ejecuta la función
                print('value: $value');
              },
            )
          ]),
        ),
      ),
    );
  }
}

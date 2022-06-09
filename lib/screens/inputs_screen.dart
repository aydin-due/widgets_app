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
              onChanged: (value) {
                //cada q se cambia algún caracter, se ejecuta la función
                print('value: $value');
              },
              validator: (value) {
                if (value == null) return 'Este campo es requerido';
                return value.length < 3 ? 'Mínimo de 3 letras' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction, //muestra el return del validator
              decoration: const InputDecoration(
                hintText: 'Nombre del usuario',
                labelText: 'Nombre',
                helperText: 'Sólo letras',
                counterText: '3 caracteres',
                suffixIcon: Icon(Icons.text_fields_sharp),
                prefixIcon: Icon(Icons.supervised_user_circle),
                icon: Icon(Icons.access_alarms),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10))
                )
              ),
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'aydin',
      'last_name': 'salman',
      'email': 'aydin@si.com',
      'password': 'si',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & '),
      ),
      body: SingleChildScrollView(
        //como listview pero con 1 solo hijo
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              // TextField() //no necesita q lo agrupe 1 form
              CustomInputField(
                  labelText: 'Nombre', 
                  hintText: 'Nombre del usuario', 
                  formProperty: 'first_name', 
                  formValues: formValues,),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                  labelText: 'Apellido', 
                  hintText: 'Apellido del usuario', 
                  formProperty: 'last_name', 
                  formValues: formValues,),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email', 
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Contraseña del usuario',
                obscureText: true,
                formProperty: 'password', 
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),

              ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    if (!myFormKey.currentState!.validate()) { // ! en current state es para decir q no va a ser null nunk
                      print('formulario no válido');
                      return;
                    }
                    print(formValues);
                  })
            ]),
          ),
        ),
      ),
    );
  }
}

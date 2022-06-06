import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayAlert(BuildContext context) {
    showDialog(
        // barrierDismissible: true, //deja cerrar dialogo al hacer click en la sombra
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
            title: const Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100,)
              ]),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar'))
          ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            // style: ElevatedButton.styleFrom(primary: Colors.red), //sobreescribir estilo del apptheme
            onPressed: () => displayAlert(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Mostrar alerta',
                style: TextStyle(fontSize: 16),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); //regresa a la pantalla anterior
          }),
    );
  }
}

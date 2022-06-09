import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText, 
    this.icon, 
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      autovalidateMode:
          AutovalidateMode.onUserInteraction, //muestra el return del validator
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 caracteres',
        suffixIcon: icon == null ? null : Icon(icon),
        // prefixIcon: Icon(Icons.supervised_user_circle),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.green)
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10))
        // )
      ),
    );
  }
}
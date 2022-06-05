import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Column(
          children: const [
            // imagen normal
            /*
            Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Sunset_Sky_Wallpaper_%285080737981%29.jpg/1200px-Sunset_Sky_Wallpaper_%285080737981%29.jpg'))
          '*/
            // muestra un repuesto en lo q carga la imagen
            FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Sunset_Sky_Wallpaper_%285080737981%29.jpg/1200px-Sunset_Sky_Wallpaper_%285080737981%29.jpg'))
          ],
        ));
  }
}

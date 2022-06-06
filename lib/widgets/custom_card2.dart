import 'package:flutter/material.dart';
import 'package:widgets_app/theme/appTheme.dart';

class CustomCard2 extends StatelessWidget {
  final String imgURL;
  final String? name;

  const CustomCard2({Key? key, required this.imgURL, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior:
            Clip.antiAlias, //widget hijo imita la apariencia del widget padre
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)), //borde de la card
        shadowColor: AppTheme.primary.withOpacity(0.5),
        elevation: 10,
        child: Column(
          children: [
            // imagen normal
            /*
            Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Sunset_Sky_Wallpaper_%285080737981%29.jpg/1200px-Sunset_Sky_Wallpaper_%285080737981%29.jpg'))
          '*/
            // muestra un repuesto en lo q carga la imagen
            FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(imgURL),
              width: double.infinity, //tomar todo el ancho posible
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null) //si no hay texto, no se muestra nada
              Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Text( name ?? 'Untitled')) //si no hay texto, mostrar uno por defecto
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:widgets_app/theme/appTheme.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);

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
            const FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Sunset_Sky_Wallpaper_%285080737981%29.jpg/1200px-Sunset_Sky_Wallpaper_%285080737981%29.jpg'),
              width: double.infinity, //tomar todo el ancho posible
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 300),
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: const Text('Un hermoso paisaje'))
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard1(), 
            SizedBox(height: 10), 
            CustomCard2(name:'scoobis doobis', imgURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Sunset_Sky_Wallpaper_%285080737981%29.jpg/1200px-Sunset_Sky_Wallpaper_%285080737981%29.jpg',),
            SizedBox(height: 10), 
            CustomCard2(imgURL: 'https://cdn.vox-cdn.com/thumbor/MZRJnpwAMIHQ5-XT4FwNv0rivw4=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19397812/1048232144.jpg.jpg',),
            SizedBox(height: 10), 
            CustomCard2(name:'AAAAAAA', imgURL: 'https://ichef.bbci.co.uk/news/2048/cpsprodpb/7f02/live/69f965b0-84d7-11ec-b342-e569136791c7.jpg',),
            SizedBox(height: 20), 
            CustomCard2(imgURL: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunset-quotes-21-1586531574.jpg',)],
        ));
  }
}

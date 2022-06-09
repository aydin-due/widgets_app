import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.orange[900],
            ),
          )
        ],),
      body: const Center(
         child: CircleAvatar( //no puede contener FadeInImage, se puede sustituir x un container circular
           maxRadius: 110,
           backgroundImage: NetworkImage("https://i.pinimg.com/736x/37/8a/27/378a270e775265622393da8c0527417e.jpg"),
         ),
      ),
    );
  }
}
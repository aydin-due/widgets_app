import 'package:flutter/material.dart';
import 'package:widgets_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //home: const Listview2Screen(),
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => const HomeScreen(),
          'listview1': (BuildContext context) => const Listview1Screen(),
          'listview2': (BuildContext context) => const Listview2Screen(),
          'alert': (BuildContext context) => const AlertScreen(),
          'card': (BuildContext context) => const CardScreen()
        });
  }
}

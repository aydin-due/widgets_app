import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imageID = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    //añadir imágenes a la lista
    final lastID = imageID.last;
    imageID.addAll([1, 2, 3, 4, 5].map((e) => lastID + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        //quita los espacios vacíos
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          //carga imágenes de manera perezosa  (cargan mientras scrolleas)
          physics:
              const BouncingScrollPhysics(), //efecto al final d la pantalla d ios
          controller: scrollController,
          itemCount: imageID.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${imageID[index]}'));
          },
        ),
      ),
    );
  }
}

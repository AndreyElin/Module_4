import 'package:flutter/material.dart';

class ImagesTabs extends StatefulWidget {
  const ImagesTabs({Key? key}) : super(key: key);

  @override
  State<ImagesTabs> createState() => _ImagesTabsState();
}

class _ImagesTabsState extends State<ImagesTabs> {
  final List<String> nav = ['Список 1', 'Список 2'];
  final List<String> fakeData = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: nav.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('КарсТинки'),
          centerTitle: true,
          bottom: TabBar(
            tabs: nav.map((String item) => Tab(text: item)).toList(),
          ),
        ),
        body: TabBarView(
          children: nav.map((name) {
            return ListView(
              key: PageStorageKey(name),
              children: <Widget>[for (var item in fakeData) Image.asset(item)],
            );
          }).toList(),
        ),
      ),
    );
  }
}

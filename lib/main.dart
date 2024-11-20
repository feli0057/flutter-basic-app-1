import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic App 1',
      theme: ThemeData(
        fontFamily: 'RethinkSans',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basic App 1'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network('https://picsum.photos/800/600'),
                    const SizedBox(width: 8),
                    Image.network('https://picsum.photos/800/600'),
                    const SizedBox(width: 8),
                    Image.network('https://picsum.photos/800/600'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('ListTile 1',
                    style: TextStyle(
                        fontFamily: 'RethinkSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 24)),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('ListTile 2',
                    style: TextStyle(
                        fontFamily: 'RethinkSans',
                        fontStyle: FontStyle.italic,
                        fontSize: 24)),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('ListTile 3',
                    style: TextStyle(
                        fontFamily: 'RethinkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 24)),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('ListTile 4',
                    style: TextStyle(
                        fontFamily: 'RethinkSans',
                        fontWeight: FontWeight.w900,
                        fontSize: 24)),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/images/image1.jpg'),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/image2.jpg'),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/image3.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('My App'),
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.w3schools.com/howto/img_avatar.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverList(
            delegate:
                // horaizontal list with scroll
                SliverChildBuilderDelegate(
              (context, index) => Container(
                height: 100.0,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Center(
                  child: Text('List Item $index'),
                ),
              ),
              childCount: 20,
            ),
            // SliverChildListDelegate(
            //   [
            //     Container(height: 150.0, color: Colors.red),
            //     Container(height: 150.0, color: Colors.green),
            //     Container(height: 150.0, color: Colors.blue),
            //     Container(height: 150.0, color: Colors.yellow),
            //     Container(height: 150.0, color: Colors.orange),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}

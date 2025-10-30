import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(title: 'City Tour'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                    padding: EdgeInsets.all(16),
                ),
                SizedBox(height: 16),
                Row(

                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: ClipRRect(
                      child: CachedNetworkImage(
                          imageUrl:
                          'https://picsum.photos/id/162/300/200'
                          'https://picsum.photos/id/164/300/200'
                          'https://picsum.photos/id/174/300/200'
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// crossAxisAligment: CrossAxisAlignment.start,
//   children: <Widget>[
//   const Text('You have pushed the button this many times:'),
//   Text(
//     '$_counter',
//     style: Theme.of(context).textTheme.headlineMedium,
//   ),
// ],
// floatingActionButton: FloatingActionButton(
//   onPressed: _incrementCounter,
//   tooltip: 'Increment',
//   child: const Icon(Icons.add),
// ),

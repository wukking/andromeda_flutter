import 'package:andromeda_flutter/ui/home/AnimPage.dart';
import 'package:andromeda_flutter/ui/home/MainPage.dart';
import 'package:andromeda_flutter/ui/home/PainterPage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String,WidgetBuilder>{
      '/a': (BuildContext context) => const MainPage(),
      '/b':(BuildContext context) => const AnimaPage(),
      '/c':(BuildContext context) => const PainterPage()
    },

    home: MyMain(),
  ));
}

class MyMain extends StatelessWidget{
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("垃圾")),
    body: Column(
      children: [
        ElevatedButton(onPressed: (){Navigator.of(context).pushNamed("/a");}, child: const Text("Main")),
        ElevatedButton(onPressed: (){Navigator.of(context).pushNamed("/b");}, child: const Text("Anim")),
        ElevatedButton(onPressed: (){Navigator.of(context).pushNamed("/c");}, child: const Text("Paint")),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andromeda Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Andromeda'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

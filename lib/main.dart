import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter perevoznikovavv',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Кликер'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
              'Круто! Ты нажал на кнопку столько раз: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 200,
        width: 200,
        child: FloatingActionButton.large(onPressed: _incrementCounter,
        child: Image.asset("assets/images/lala.png", fit: BoxFit.fill))
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

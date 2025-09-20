import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
/*
class _MyHomePageState extends State<MyHomePage> {
  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(visible: kontrol, child: Text("Merhaba")),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = true;
                });
              },
              child: Text("Durum 1"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = false;
                });
              },
              child: Text("Durum 2"),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
class _MyHomePageState extends State<MyHomePage> {
  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(kontrol ? "Doğru" : "Yanlış",
            style: TextStyle(
              color:kontrol ? Colors.blue : Colors.red,
              fontSize: kontrol ? 20: 50,
              fontWeight: kontrol ? FontWeight.normal : FontWeight.bold,
            ),),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = true;
                });
              },
              child: Text("Durum 1"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = false;
                });
              },
              child: Text("Durum 2"),
            ),
          ],
        ),
      ),
    );
  }
}
*/

class _MyHomePageState extends State<MyHomePage> {
  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (() {
              if (kontrol) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.done), Text("Doğru")],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.cancel), Text("Yanlış")],
                );
              }
            })(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = true;
                });
              },
              child: Text("Durum 1"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = false;
                });
              },
              child: Text("Durum 2"),
            ),
          ],
        ),
      ),
    );
  }
}

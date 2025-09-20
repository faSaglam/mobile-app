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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Merhaba")));
              },
              child: Text("Varsayılan"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Silmek istiyor musunuz?"),
                    action: SnackBarAction(
                      label: "Evet",
                      onPressed: () {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Silindi")));
                      },
                    ),
                  ),
                );
              },
              child: Text("Snackbar Action"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("İnternet bağlantısı yok.",style: TextStyle(color: Colors.indigoAccent),),
                    backgroundColor: Colors.white,
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                      label: "Tekrar Dene",
                      textColor: Colors.red,
                      onPressed: () {
                        print("Tekrar denendi.");
                      },
                    ),
                  ),
                );
              },
              child: Text("Snackbar Özel"),
            ),
          ],
        ),
      ),
    );
  }
}

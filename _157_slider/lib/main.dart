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
      debugShowMaterialGrid: false,
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
  double ilerleme = 50.0;

  bool progressBarVisible = false;
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
            Text("Sonuç: ${ilerleme.toInt()}"),
            Slider(
              value: ilerleme,
              max: 100.0,
              min: 0.0,
              activeColor: Colors.indigo,
              inactiveColor: Colors.red,
              onChanged: (double i) {
                setState(() {
                  ilerleme = i;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ilerleme += 10;
                    });
                  },
                  child: Text('Slider ileri'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ilerleme -= 10;
                    });
                  },
                  child: Text('Slider geri'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

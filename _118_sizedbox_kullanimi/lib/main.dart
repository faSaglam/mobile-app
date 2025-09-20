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
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

      body: Row(
        children: [
          Container(width: 20, height: 200, color: Colors.blue),

          //SizeBox ile yeniden boyutlandırabilir. Containerlarda değil ama ölçüm özelliği olmayan widgetlarda işe yarar
          SizedBox(
            width: 100,height: 49,
            child: Container(width: 50, height: 200, color: Colors.green),
          ),
          SizedBox(width: 100, height: 200),

          //Boşluk bırakmak için kullanılabilir.
          Container(width: 70, height: 200, color: Colors.red),
        ],
      ),
    );
  }
}

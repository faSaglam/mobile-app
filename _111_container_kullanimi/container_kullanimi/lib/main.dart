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
      ),
      body: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 10.0,
              left: 5.0,
            ),
            width: 100,
            height: 200,
            color: Colors.red,
            child: Text("Merhaba"),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10.0,
              left: 5.0,
              bottom: 2,
              right: 20,
            ),
            width: 200,
            height: 200,
            
            child: Text("Merhaba"),
            decoration: BoxDecoration(
              color:Colors.black,
              border: Border.all(
                color:Colors.blueAccent,
                width: 3.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.9)),
            )
          
          ),
        ],
      ),
    );
  }
}

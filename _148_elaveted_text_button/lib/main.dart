import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfController = TextEditingController();
  String alinanVeri = '';

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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(color:Colors.red)
                )
              ),
              onPressed: () {
                print("Elaveted button çalıştı");
              },
              child: Text(
                'Elaveted button çalıştı',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                print("Text button çalıştı");
              },
             
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color:Colors.red))
                
              ),
               child: Text(
                'Text button çalıştı',
                style: TextStyle(color: Colors.white),
                
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

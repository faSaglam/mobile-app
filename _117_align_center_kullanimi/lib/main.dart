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

      //CENTER
      // Sadece texti ortaladı 
      // body: Row(
      //   children: [
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.red,
      //       child: Center(
      //         //Center bulunduğu alana göre childı ortalar
      //         child: Text("Merhaba"),
      //       ),
      //     ),
      //   ],
      
      // ), 

      //Row bodye göre centerlandı.
      //  body: Center(
      //   child: Row(
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 200,
      //         color:Colors.amber,
      //         child: Text("data"),
      //       ),
      //     ],
      //   ),
      // ),


      //ALIGN
        body: Row(
        
          children: [
            Container(
              width: 200,
              height: 200,
              color:Colors.amber,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text("Merhaba"),
                )
            ),
          ],
        
      ),


    );
  }
}

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

            SizedBox(
              width: 300,
             
              child: Card(
                color: Colors.deepPurpleAccent,
                shadowColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  side: BorderSide(width: 2,color: Colors.indigoAccent)
                ),
                elevation: 8.0,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Toplam Puan",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 24),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.amberAccent,),
                          Text("150",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 32),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
           
          ],
        ),
      ),

    );
  }
}

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

  Future<List<String>> verileriGetir() async{
    var ulkeListesi = ["Türkiye","Rusya","Çin","Fransa","Amerika"];
    return ulkeListesi;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:FutureBuilder(
        future: verileriGetir(), 
        builder: (context,snapshot){
          if(snapshot.hasData){
            var ulkeListesi = snapshot.data;
            return ListView.builder(
              itemCount: ulkeListesi!.length,
              itemBuilder: (context,index){
                return Card(
                  child: Row(
                    children: [
                      Text(ulkeListesi[index])
                    ],
                  ),
                );

              },
            );

          }
          else{
            return Center();
          }
        }
        )

    );
  }
}

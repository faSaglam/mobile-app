import 'package:_185_gridviewdinamik/detay.dart';
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
  var ulkeler = ["Türkiye", "İsrail", "Rusya", "ABD"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
        ),

        itemCount: ulkeler.length,
        itemBuilder: (context, index) {
          return 
          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Detay(ulkeAdi:ulkeler[index] ,)));
            },
            child: Card(child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: 
              [
                Text("${ulkeler[index]}"),
                Spacer(),
                // ElevatedButton(
                //   onPressed: (){
                //     print("${ulkeler[index]} seçildi.");
                //   }, 
                //   child: Text("Seç"))
                PopupMenuButton(
                  child: Icon(Icons.more_vert),
                  itemBuilder: (context)=>[
                    PopupMenuItem(value: 1,child: Text("Sil"),),
                    PopupMenuItem(value: 2,child: Text("Güncelle"),)
                  ],
                  onSelected: (menuItemValue){
                    if(menuItemValue == 1){
                      print("${ulkeler[index]} silindi");
                    }
                       if(menuItemValue == 2){
                      print("${ulkeler[index]} güncellendi");
                    }
                  },
                  )
              ]),
            )),
          );
        },
      ),
    );
  }
}

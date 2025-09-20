import 'package:_180_dinamikliste/detay.dart';
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
  var ulkeler = ["Türkiye", "Rusya", "Çin", "Arabistan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ulkeler.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                //height: 50,// Yatayda scroll için kapatıldı yerine genişlik verildi.
                width: 100,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Detay(ulkeAdi: ulkeler[index])));
                      },
                      child: Text(ulkeler[index]),
                    ),
                    Spacer(),
                    // TextButton(
                    //   onPressed: () {
                    //     print("TextButtondan ${ulkeler[index]}");
                    //   },
                    //   child: Text("Seç"),
                    // ),
                    PopupMenuButton(
                      itemBuilder: (context)=>[
                        PopupMenuItem(value: 1,child: Text("Sil"),),
                        PopupMenuItem(value: 1,child: Text("Güncelle"),),
                       
                      ],
                      onSelected: (menuItemValue){
                        if(menuItemValue == 1){
                          print("${ulkeler[index]} silindi");
                        }
                        if(menuItemValue == 2){
                          print("${ulkeler[index]} güncellendi");
                        }
                      },
                      child:Icon(Icons.more_vert)
                      )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
0
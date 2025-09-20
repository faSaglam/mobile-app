
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
        backgroundColor: Colors.red,
        title: Column(
          children: [
            Text("Başlık",style: TextStyle(color: Colors.white, fontSize: 20),),
            Text("Alt Başlık",style: TextStyle(color: Colors.white, fontSize: 15),),
          ]
          
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print("Menu icon tıklandı");
          },
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
        ),
        actions: [
          TextButton(onPressed: (){
            print("Tıklandı");
          }, child: Text("Çıkış")),
          IconButton(
            onPressed: () {
              print("Bilgi Tıklandı");
            },
            tooltip: "Bilgi",
            icon: Icon(Icons.info),
          ),
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context)=>[
              PopupMenuItem(
                value: 1,
                child: Text("Sil"),
              ),
                    PopupMenuItem(
                value: 2,
                child: Text("Güncelle"),
              ),
            ],
            onSelected: (menuItemValue){
              if(menuItemValue == 1){
                print("Sil Tıklandı.");
              }
              else
              {
                print("Güncelle Tıklandı");
              }
            },
          )

        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}

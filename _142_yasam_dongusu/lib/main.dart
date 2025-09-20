import 'package:_142_yasam_dongusu/SayfaA.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaşam Döngüsü',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AnaSayfa(title: 'Ana Sayfa'),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key, required this.title});

  final String title;

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with WidgetsBindingObserver {

  @override
  void initState() {
    
    super.initState();
    print("initState() metodu çalıştı.");
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
    print("dispose() metodu çalıştı.");
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state == AppLifecycleState.inactive){
      print("inactive() metodu çalıştı.");
    }
    if(state == AppLifecycleState.paused){
      print("paused() metodu çalıştı.");
    }
    if(state == AppLifecycleState.resumed){
      print("resumed() metodu çalıştı.");
    }
    if(state == AppLifecycleState.detached){
      print("detached() metodu çalıştı.");
    }
 
  }
  @override
  Widget build(BuildContext context) {
    print("build() metodu çalıştı.");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column
        (
         children: [
          ElevatedButton(
           onPressed:()
           {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaA()));
           },
           child: Text("Sayfa A"))
         ],
        )),
    );
  }
}

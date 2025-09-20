import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Anasayfa(),
    );
  }
}
class Anasayfa extends StatefulWidget{
  const Anasayfa({Key? key}):super(key:key);
  
  @override
  State<Anasayfa> createState()=> _AnasayfaState();
  

  
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Başlık"),
        backgroundColor: Colors.red,
      ),
      body: const Center(
      ),
    );
  }
}
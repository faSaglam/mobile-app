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

  var tfControl = TextEditingController();


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
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Basit Alert"),
                      content: Text("içerik"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("İptal"),
                        ),
                        TextButton(
                          onPressed: () {
                            print("Tamam");
                          },
                          child: Text("tamamr"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Basit Alert"),
            ),
                ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Özel Alert",style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.indigoAccent,
                      content: SizedBox(
                        height: 120,
                        child: Column(
                          children: [
                            TextField(
                              controller: tfControl,
                              decoration: InputDecoration(
                                labelText: "Veri",
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("İptal",style: TextStyle(color: Colors.white),),
                        ),
                        TextButton(
                          onPressed: () {
                            String alinanVeri = tfControl.text;
                            print("Veri okundu.: $alinanVeri");
                            Navigator.pop(context);
                          },
                          child: Text("Veri Oku",style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Özel Alert"),
            ),
          ],
        ),
      ),
    );
  }
}

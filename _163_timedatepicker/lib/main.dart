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
      debugShowMaterialGrid: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Anasayfa(title: 'Flutter Demo Home Page'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key, required this.title});

  final String title;

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var tfTarih = TextEditingController();
  var tfSaat = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin:EdgeInsets.all(8.0) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller:tfSaat,
                decoration: InputDecoration(
                  hintText: "Saat giriniz"
                ),
                onTap:(){
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  ).then((alinanSaat){
                    setState(() {
                      tfSaat.text = "${alinanSaat!.hour}:${alinanSaat.minute}";
                    });
                  });
                },
              ),
              TextField(
                controller:tfTarih,
                decoration: InputDecoration(
                  hintText: "Tarih giriniz"
                ),
                onTap:(){
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2005),
                    lastDate: DateTime(2030)
                  ).then((alinanTarih){
                    setState(() {
                      tfTarih.text = "${alinanTarih!.day}/${alinanTarih.month}/${alinanTarih.year}";
                    });
                  });
                },
              )
          
            ],
          ),
        ),
      ),
    );
  }
}

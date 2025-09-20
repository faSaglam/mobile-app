import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final String ulkeAdi;


  const Detay({required this.ulkeAdi});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text(widget.ulkeAdi)

                    
                  ],
                ),
              ),
            ),
          ),
    );
  }
}

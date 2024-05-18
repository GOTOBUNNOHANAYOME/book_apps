import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.number});

  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop(number + 1);
              }, 
              child: const Text('Increment')
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop(number - 1);
              }, 
              child: const Text('Decrement')
            )
          ]
        )
      ),
    );
  }
}

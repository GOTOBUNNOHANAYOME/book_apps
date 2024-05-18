import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('number = $_number'),
            ElevatedButton(
                // onPressed: () async {
                //   final newNumber =
                //       await Navigator.of(context).push<int>(MaterialPageRoute(
                //     builder: (_) => SecondScreen(number: _number),
                //   ));
                //   setState(() {
                //     if (newNumber != null) {
                //       _number = newNumber;
                //     }
                //   });
                onPressed: () {
                  GoRouter.of(context).go('/second/$_number');
                },
                child: const Text('Secondへ'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/AppRouter.dart';
import 'SecondScreen.dart';
import 'FirstScreen.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: AppRouter.getRouter(),
    )
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const FirstScreen(),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (_) => const SecondScreen(),
//               ),
//             );
//           },
//           child: Text('Second Screen'),
//         ),
//       ),
//     );
//   }
// }

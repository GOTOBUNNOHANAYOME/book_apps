import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:project/FirstScreen.dart';
import 'package:project/SecondScreen.dart';

class AppRouter {
  static getRouter(){
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const FirstScreen(),
          routes: [
            GoRoute(
              path: 'second:number',
              builder: (context, state) => const SecondScreen(number: 0),
              routes: [
                GoRoute(
                  path: 'third', // routesを入れ子構造にするpath　pathは'/second/third'になる
                  builder: (context, state) => const SecondScreen(number: 0),
                )
              ]
            )
          ]
        ),
        // GoRoute(
        //   path: '/second/:number',
        //   builder: (context, state) => const SecondScreen(number: 0),
        // )
      ]
    );
  }
}
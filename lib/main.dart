import 'package:flutter/material.dart';
import 'package:prueba/pages/detalles.dart';
import 'package:prueba/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personajes',
      initialRoute: '/home',
      routes: {
        '/home': (_) => HomePage(),
        '/detalles': (_) => Detalles(),
      },
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:leloflutter/pages/second_page.dart';
import 'package:leloflutter/pages/six_page.dart';

// ici notre main est le point d'entrée de l'application Flutter.
// Il appelle la fonction runApp() pour lancer l'application.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // le materialApp est un widget qui fournit des fonctionnalités de base pour une application Flutter.
    // les routages , les themes , la localisation et d'autres fonctionnalités.

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "leloFlutter",
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: SixPage(),
    );
  }
}

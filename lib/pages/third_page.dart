import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutterfire")),
      drawer: Drawer(),
      body: GridView.builder(
        itemCount: 15,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20, // ligne
          crossAxisSpacing: 20, // colonne
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Colors.black, width: 2),
            ),
            child: SizedBox(
              height: 100,
              width: 100,
              child: Center(child: Text("Flutter$index")),
            ),
          );
        },
      ),
    );
  }
}

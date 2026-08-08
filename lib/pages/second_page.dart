import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          // fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -30,
              left: -30,
              child: Container(height: 150, width: 150, color: Colors.red),
            ),
            Container(height: 200, width: 250, color: Colors.green),
            Positioned(
              top: -20,
              right: -20,
              child: Container(height: 100, width: 100, color: Colors.amber),
            ),
            //
          ],
        ),
      ),
    );
  }
}

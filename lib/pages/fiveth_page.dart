import 'package:flutter/material.dart';

class FivethPage extends StatelessWidget {
  const FivethPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(height: 100, width: 200, color: Colors.red),
          Container(height: 200, width: 200, color: Colors.amber),
          Container(height: 200, width: 200, color: Colors.green),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 30,

            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 200, width: 200, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}

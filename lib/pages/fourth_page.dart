import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SliverToBoxAdapter(child: Container(height: 200, color: Colors.red)),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    color: Colors.yellow,
                  ),
                  Positioned(
                    top: -10,
                    right: 10,
                    child: Container(height: 80, width: 80, color: Colors.red),
                  ),
                ],
              );
            },
          ),
          SliverToBoxAdapter(child: Container(height: 200, color: Colors.blue)),
          SliverToBoxAdapter(
            child: Container(height: 200, color: Colors.green),
          ),
          SliverGrid.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(color: Colors.blue);
            },
          ),
        ],
      ),
    );
  }
}

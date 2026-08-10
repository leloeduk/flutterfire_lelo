import 'package:flutter/material.dart';
import 'package:leloflutter/pages/fiveth_page.dart';
import 'package:leloflutter/pages/fourth_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ici vous avez le widget Scaffold qui est utilisé pour
    // afficher la structure de base de l'écran.
    return Scaffold(
      // ici vous avez le body qui est utilisé pour afficher
      // le contenu principal de l'écran.
      body: Center(
        // ici vous avez le widget Center qui est utilisé pour
        // centrer son widget enfant à l'écran.
        child: Stack(
          // ici vous avez le widget Stack qui est utilisé pour
          // empiler les widgets enfants les uns sur les autres.
          // fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            // ici vous avez le widget Positioned qui est utilisé pour
            // positionner un enfant de manière absolue dans le Stack.
            // Le premier conteneur rouge est positionné en bas à gauche
            // et déborde légèrement du Stack (bottom: -30, left: -30).
            Positioned(
              bottom: -30,
              left: -30,
              child: Container(height: 150, width: 150, color: Colors.red),
            ),
            // ici vous avez un widget Container (parent) qui est utilisé pour
            // afficher un rectangle vert au centre du Stack.
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // ici vous avez le widget Navigator qui est utilisé pour
                        // naviguer vers une autre page.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FourthPage()),
                        );
                      },
                      child: Text("Navigez sur FouthPage"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ici vous avez le widget Navigator qui est utilisé pour
                        // naviguer vers une autre page.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FivethPage()),
                        );
                      },
                      child: Text("Navigez sur FivethPage"),
                    ),
                  ],
                ),
              ),
            ),
            // ici vous avez un autre Widget Positioned qui est utilisé pour
            // positionner le conteneur ambre en haut à droite,
            // celui-ci déborde également du Stack (top: -20, right: -20).
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

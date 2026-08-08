import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ici vous avez le widget Scaffold qui est utilisé pour
    // afficher la structure de base de l'écran.
    return Scaffold(
      // ici vous avez le widget AppBar qui est utilisé
      // pour afficher une barre d'application en haut de l'écran.
      appBar: AppBar(title: Text("Flutterfire")),
      // ici drawer est utilisé pour afficher un tiroir de navigation latéral.
      drawer: Drawer(),
      // ici vous avez le body qui est utilisé pour afficher
      // le contenu principal de l'écran.
      // le GridView.builder est utilisé pour créer une grille défilante d'éléments.
      body: GridView.builder(
        // itemCount spécifie le nombre d'éléments à afficher dans la grille.
        itemCount: 15,
        // gridDelegate définit la disposition de la grille,
        // ici un nombre fixe de colonnes (crossAxisCount: 2).
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20, // ligne
          crossAxisSpacing: 20, // colonne
          childAspectRatio: 1,
        ),
        // itemBuilder est utilisé pour construire chaque élément de la grille.
        itemBuilder: (context, index) {
          // ici vous avez le widget Card qui est utilisé pour
          // afficher une carte Material Design avec élévation
          // et des coins arrondis.
          return Card(
            elevation: 2,
            // shape définit la forme de la carte,
            // ici des coins arrondis avec une bordure noire.
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Colors.black, width: 2),
            ),
            // ici vous avez le widget SizedBox qui est utilisé pour
            // contraindre la taille de son enfant.
            child: SizedBox(
              height: 100,
              width: 100,
              // ici le widget Center est utilisé pour centrer
              // son enfant (le texte) dans la carte.
              child: Center(child: Text("Flutter$index")),
            ),
          );
        },
      ),
    );
  }
}

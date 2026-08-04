import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ici vous avez le widget AppBar qui est utilisé
      //pour afficher une barre d'application en haut de l'écran.Il  :
      appBar: AppBar(title: Text("Listview "), centerTitle: true),
      //ici drawer est utilisé pour afficher un tiroir de navigation latéral.
      drawer: Drawer(),
      // ici vous avez le body qui est utilisé pour afficher
      // le contenu principal de l'écran.
      // le listview est utilisé pour afficher une liste déroulante d'éléments.
      body: ListView(
        children: [
          // ici vous avez le widget Sizebox qui est utilisé
          //pour créer un conteneur avec des propriétés de style.
          SizedBox(
            height: 80,
            // listView.builder est utilisé pour créer une liste déroulante d'éléments.
            // il prend un itemCount qui spécifie le nombre d'éléments à afficher.
            // itemBuilder est utilisé pour construire chaque élément de la liste.
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(radius: 40, backgroundColor: Colors.pink),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            //  pour spécifier la direction de défilement de la liste.
            // scrollDirection: Axis.vertical ( Vertical par défaut)
            // shrinkWrap: true, pour permettre à la ListView de s'adapter à la taille de son contenu.
            shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(), pour désactiver le défilement de la ListView.
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                ),
                child: ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.pink),
                  title: Text("FlutterFire"),
                  subtitle: Text("Flutter@gmail.com"),
                  trailing: Icon(Icons.call),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

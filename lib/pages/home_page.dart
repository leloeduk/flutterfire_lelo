import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChange = false;

  @override
  void initState() {
    isChange = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ici vous avez le widget AppBar qui est utilisé
      //pour afficher une barre d'application en haut de l'écran.Il  :
      // le leading ( widget icons)
      // un title ( widget text) ,
      // des actions (des icônes et un bouton d'action. )
      appBar: AppBar(
        // backgroundColor: Colors.green,
        leading: Icon(Icons.home),
        title: Text(isChange ? "Mentors" : "Programmes"),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.settings),
          IconButton(
            onPressed: () {
              print("lelo");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      // ici vous avez le body qui est utilisé pour afficher
      // le contenu principal de l'écran.
      //Il contient un widget Column qui organise les widgets enfants verticalement.
      // un container ,
      //un row avec trois container
      // une image.
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 100,
            width: MediaQuery.of(context).size.width,

            // width: 140,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1.5, 2),
                  blurRadius: 10,
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red.shade100,
                  Colors.red.shade500,
                  Colors.red.shade800,
                  Colors.red.shade900,
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                "Container Center text",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // ce container est utilisé pour créer
          //un conteneur avec une marge, un padding, une hauteur et une largeur spécifiques.
          // Il a également une décoration qui inclut une couleur de fond grise et des coins arrondis.
          // À l'intérieur du conteneur,
          // il y a un widget Row qui contient
          // trois autres conteneurs avec différentes formes et tailles.
          // Le premier et le troisième conteneur sont des cercles rouges,
          // tandis que le deuxième conteneur est un rectangle rouge
          //avec une icône de cœur jaune à l'intérieur.
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey,
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 150,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                  ),
                  child: Icon(Icons.favorite, size: 30, color: Colors.yellow),
                ),
                Container(
                  height: 80,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),

          // ici vous avez un widget Image qui est utilisé pour afficher
          // une image à partir d'un fichier local.
          // avec une condition ternary qui vérifie la valeur de la variable isChange.
          // si isChange est vrai, l'image "mentors.png" sera affichée,
          // sinon l'image "programmes.png" sera affichée.
          isChange
              ? Image.asset(
                  "assets/images/mentors.png",
                  width: 200,
                  height: 200,
                )
              : Image.asset(
                  "assets/images/programmes.png",
                  width: 200,
                  height: 200,
                ),
        ],
      ),
      // ici vous avez un widget FloatingActionButton qui est utilisé pour afficher
      // un bouton flottant en bas à droite de l'écran.
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isChange = !isChange;
          });
        },
        child: Icon(Icons.upgrade),
      ),
    );
  }
}

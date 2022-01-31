import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int likes = 0;
  int up = 0;
  int down = 0;

  @override
  Widget build(BuildContext context) {
    //Scaffold indica que se formara una pantalla
    return Scaffold(
      // Columna para alinear elementos en vertical (de arriba hacia abajo)
      body: Column(
        children: [
          // Para agregar imagenes de una url
          Image.network(
            "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg",
          ),
          // Para poner elementos en renglon

          Center(
            heightFactor: 3,
            child: Row(
              // el eje main de la Row es horizontal (izq a dch)
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "ITESO, Universidad Jesuita de Guadalajara",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text("Tlaquepaque in the Guadalajara Metropolitan Area"),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    likes++;
                    if (up == 0) {
                      up++;
                    } else {
                      up--;
                    }
                    // set state refresca pantalla para actualizar contenido
                    setState(() {});
                  },
                  color: (up == 0) ? Colors.black : Colors.blue,
                  icon: Icon(Icons.thumb_up),
                ),
                Text("$likes"),
                IconButton(
                  onPressed: () {
                    (likes > 0) ? likes-- : likes;
                    if (down == 0) {
                      down++;
                    } else {
                      down--;
                    }
                    // set state refresca pantalla para actualizar contenido
                    setState(() {});
                  },
                  color: (down == 0) ? Colors.black : Colors.red,
                  icon: Icon(Icons.thumb_down),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    iconSize: 64,
                    onPressed: () {
                      // Muestra un snack bar con texto
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Correo del iteso: correo@iteso.com"),
                        ),
                      );
                    },
                    icon: Icon(Icons.email),
                  ),
                  Text("Email"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 64,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("telefono del iteso: 3312415613"),
                        ),
                      );
                    },
                    icon: Icon(Icons.phone_forwarded),
                  ),
                  Text("Telefono"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 64,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Ruta del iteso"),
                        ),
                      );
                    },
                    icon: Icon(Icons.directions),
                  ),
                  Text("Ruta"),
                ],
              ),
            ],
          ),
          // Para poner padding alrededor de un widget
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "The university has approximately 10,000 students. Its academic options include Civil Engineering and Architecture, Food Engineering, Education, Electronic Engineering, International Business, International Relations, Chemical Engineering, Philosophy, Psychology and Social Studies, and Networks and Telecommunications Engineering.[2] The university is affiliated to the Jesuit University System, which includes the Iberoamerican Universities in Acapulco, Mexico City, Jaltepec, León, Torreón, Puebla and Tijuana.[3] According to the vision of Jesuits, local businesspeople, and others who planned the university, it would combine professional training with a firm sense of social responsibility.",
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

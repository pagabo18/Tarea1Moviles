import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _dec = 0;
  int _inc = 0;
  int _mail = 0;
  int _phone = 0;
  int _dir = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _inc++;
    });
  }

  void _dectrementCounter() {
    setState(() {
      _counter--;
      _dec++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('App Iteso'),
            ),
            body: Column(
              children: [
                Image.network(
                    "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
                ListTile(
                  title: const Text(
                      'EL ITESO, Universidad jesuita de guadalajara'),
                  subtitle: const Text('Tlaquepaque'),
                  trailing: Wrap(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.thumb_up),
                        onPressed: _incrementCounter,
                        color: (_inc % 2 == 1) ? Colors.blue : Colors.grey,
                      ),
                      IconButton(
                          icon: const Icon(Icons.thumb_down),
                          onPressed: _dectrementCounter,
                          color: (_dec % 2 == 1) ? Colors.red : Colors.grey),
                      Text('$_counter'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.mail),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Mail"),
                              duration: Duration(milliseconds: 300),
                            ));

                            setState(() {
                              _mail++;
                            });
                          },
                          color: (_mail % 2 == 1) ? Colors.blue : Colors.black,
                        ),
                        const Text("correo"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.phone),
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: const Text("Telefono"),
                              duration: const Duration(milliseconds: 300),
                            ));

                            setState(() {
                              _phone++;
                            });
                          },
                          color: (_phone % 2 == 1) ? Colors.blue : Colors.black,
                        ),
                        const Text("telefono")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.directions),
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: const Text("Direccion"),
                              duration: const Duration(milliseconds: 300),
                            ));

                            setState(() {
                              _dir++;
                            });
                          },
                          color: (_dir % 2 == 1) ? Colors.blue : Colors.black,
                        ),
                        const Text("correo"),
                      ],
                    ),
                  ],
                )
              ],
            )));
  }
}

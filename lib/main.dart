import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 153, 240, 54)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ejemplo Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Esto es la creacion del elemento que contendra el boton
        child: Column(
          // Estas son las propiedades del elemento
          // Con esta linea se centra el botón
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // El botón es creado aquí
            ElevatedButton(
              onPressed: () {
                // Esto es lo que el boton hará
                print('¡Hola Mundo!');
              },
              // El texto que aparace sobre el botón
              child: const Text('Presiona para saludar'),
            ),
          ],
        ),
      ),
    );
  }
}

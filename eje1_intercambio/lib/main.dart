import 'package:flutter/material.dart';
import 'Paginas/inter.dart';
import 'Paginas/home.dart';
import 'Paginas/acerca.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú de Ejercicios',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú de Opciones'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Icon(Icons.menu, size: 80, color: Colors.white),
                  Text(
                    'Ejercicios',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.swap_horiz),
              title: Text('Intercambio de palabras'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Intercambio()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Acerca de'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AcercaScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Bienvenido al Menú de Ejercicios',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

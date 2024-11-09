import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ejecución de Ejercicios', style: TextStyle(fontSize: 24)),
            Text('Desarrollo de aplicaciones Moviles', style: TextStyle(fontSize: 24)),
            Text('NRC 2509', style: TextStyle(fontSize: 24)),
            Text('Miembros del Grupo', style: TextStyle(fontSize: 24)),
            Text('Jeanhela Nazate', style: TextStyle(fontSize: 24)),
            Text('Cristhopher Villamarin', style: TextStyle(fontSize: 24)),
            Text('Stephen Drouet', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

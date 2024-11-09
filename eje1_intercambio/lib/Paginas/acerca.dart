import 'package:flutter/material.dart';

class AcercaScreen extends StatefulWidget {
  @override
  _AcercaScreenState createState() => _AcercaScreenState();
}

class _AcercaScreenState extends State<AcercaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grupo 6'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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

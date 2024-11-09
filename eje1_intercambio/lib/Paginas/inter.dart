//Librerias
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Intercambio extends StatefulWidget{
  @override
  State<StatefulWidget> createState()  => IntercambioState();

}

class IntercambioState extends State<Intercambio>{
  //codigo

  //controladores oara la entrada de lso campos de texto
  final TextEditingController _controllerA=TextEditingController();
  final TextEditingController _controllerB=TextEditingController();

  //Declara variables para almacenar
  String palabraA ='';
  String palabraB ='';
  //funcion para intercambiar las palabras
  void _intercambiarPalabras(){
    setState(() {
      String temp= palabraA;
      palabraA=palabraB;
      palabraB=temp;
    });
  }

  //diseño
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intercambio de palabras'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllerA,
              decoration: InputDecoration(labelText:'Ingrese la palabra A'),
              onChanged: (value){
                palabraA=value;
              },
            ),
        TextField(
               controller: _controllerB,
                decoration: InputDecoration(labelText:'Ingrese la palabra B'),
                onChanged: (value){
          palabraB=value;
        },
        ),

          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: _intercambiarPalabras,
            child: Text('Intercambiar')),
          Text('A=$palabraA' , style: TextStyle(fontSize: 24),),
          Text('B=$palabraB' , style: TextStyle(fontSize: 24),),
          
          ],
        ),
      ),
    );

  }

}
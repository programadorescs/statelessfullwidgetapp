import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  //String textoMostrar ="Hola soy un statelesswidget";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativo de estado"),),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Hola soy un statelesswidget"),
          Icon(Icons.star, color: Colors.orange,),
          ElevatedButton(
              onPressed: () {
                //textoMostrar = "hola como estas";
                //print(textoMostrar);
              },
              child: Text("Cambiar el valor de la variable a hola como estas"),
            ),
        ],
      ),
    );
  }
}
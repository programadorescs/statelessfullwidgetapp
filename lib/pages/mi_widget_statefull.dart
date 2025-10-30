import 'package:flutter/material.dart';

class MiWidgetStatefull extends StatefulWidget {
  const MiWidgetStatefull({super.key});

  @override
  State<MiWidgetStatefull> createState() => _MiWidgetStatefullState();
}

class _MiWidgetStatefullState extends State<MiWidgetStatefull> {
  String texto = "Hola soy un statefullwidget";
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
        }
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                //texto = "Hola este es el nuevo valor";
                numero++;
                texto = numero.toString();
                print(texto);
                setState(() {});
              },
              child: Text("Cambiar numero"),
            ),
          ],
        ),
      ),
    );
  }
}
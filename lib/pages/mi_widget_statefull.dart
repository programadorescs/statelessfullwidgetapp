import 'package:flutter/material.dart';

class MiWidgetStatefull extends StatefulWidget {
  const MiWidgetStatefull({super.key});

  @override
  State<MiWidgetStatefull> createState() => _MiWidgetStatefullState();
}

class _MiWidgetStatefullState extends State<MiWidgetStatefull> {
  String texto = "Hola soy un statefullwidget";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                texto = "Hola este es el nuevo valor";
                print(texto);
                setState(() {});
              },
              child: Text("Cambiar texto"),
            ),
          ],
        ),
      ),
    );
  }
}
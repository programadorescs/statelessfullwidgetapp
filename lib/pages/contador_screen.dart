import 'package:flutter/material.dart';
import 'package:statelessfullwidgetapp/widgets/boton_personalizado.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contadorGeneral = 0;
  int contadorUno = 0;
  int contadorDos = 0;
  int contadorTres = 0;
  int contadorCuatro = 0;
  int contadorCinco = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reto"),
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contadorGeneral = 0;
            contadorUno = 0;
            contadorDos = 0;
            contadorTres = 0;
            contadorCuatro = 0;
            contadorCinco = 0;
          });
        },
        child: Icon(Icons.restore),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.center, // Alineacion vertical
        crossAxisAlignment: CrossAxisAlignment.center, // Alinneacion horizontal
        children: [
          Text(
            contadorGeneral.toString(),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          // Fila
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonPersonalizado(
                  titulo: "Uno",
                  valor: contadorUno,
                  onPressed: () {
                    setState(() {
                      contadorUno++;
                      contadorGeneral++;
                    });
                  },
                ),

                SizedBox(
                  width: 24,
                ),

                // Contador dos
                BotonPersonalizado(
                  titulo: "Dos",
                  valor: contadorDos,
                  onPressed: () {
                    setState(() {
                      contadorDos++;
                      contadorGeneral++;
                    });
                  },
                ),
              ],
            ),
          ),

          // Separacion de la tercera fila
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonPersonalizado(
                  titulo: "Tres",
                  valor: contadorTres,
                  onPressed: () {
                    setState(() {
                      contadorTres++;
                      contadorGeneral++;
                    });
                  },
                ),

                SizedBox(
                  width: 24,
                ),

                // Contador cuatro
                BotonPersonalizado(
                  titulo: "Cuatro",
                  valor: contadorCuatro,
                  onPressed: () {
                    setState(() {
                      contadorCuatro++;
                      contadorGeneral++;
                    });
                  },
                ),
              ],
            ),
          ),

          // Ultima fila
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Contador cinco
                BotonPersonalizado(
                  titulo: "Cinco",
                  valor: contadorCinco,
                  onPressed: () {
                    setState(() {
                      contadorCinco++;
                      contadorGeneral++;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

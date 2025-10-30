import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {
  final String titulo;
  final int valor;
  final double tamanioTexto;
  final VoidCallback onPressed;

  const BotonPersonalizado({
    super.key,
    required this.titulo,
    required this.valor,
    this.tamanioTexto = 20,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$titulo: $valor",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: tamanioTexto,
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text("Add"),
        ),
      ],
    );
  }
}

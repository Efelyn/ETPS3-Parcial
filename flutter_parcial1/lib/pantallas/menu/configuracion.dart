import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  const Configuracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Text(
       'Configuracion del sistema',
        style: TextStyle(fontSize: 20), //estilo de fuente y tammaño, color
      )
      );
  }
}
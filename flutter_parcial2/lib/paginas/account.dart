import 'package:flutter/material.dart';
import 'package:flutter_parcial2/temas/colores.dart';

class Cuenta extends StatelessWidget {
  const Cuenta({super.key});

  @override
  Widget build(BuildContext context) {
  return Center(      
      child: Text(
       'Nombre:Evelyn Beatriz Andrade Moran  Canet:25-2238-2019',
        style: TextStyle(fontSize: 20, color: white), //estilo de fuente y tammaño, color
      )
      );
  }
}
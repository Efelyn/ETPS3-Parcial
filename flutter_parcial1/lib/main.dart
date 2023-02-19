import 'package:flutter/material.dart';
import 'package:flutter_parcial1/pantallas/principal.dart';

void main() {
  runApp(const Inicio());
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Aplicacion formulario',
      home: Scaffold(
        appBar: AppBar(
        title: const Text('Parcial I - ETPS3!'),
      ),
      body: Principal(),
      ),
    );
  }
}
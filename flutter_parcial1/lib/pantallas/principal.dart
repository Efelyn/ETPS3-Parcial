import 'package:flutter/material.dart';
import 'package:flutter_parcial1/pantallas/menu/Registro.dart';
import 'package:flutter_parcial1/pantallas/menu/configuracion.dart';
import 'package:flutter_parcial1/pantallas/menu/login.dart';

class Principal extends StatefulWidget {
  
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  int _selecionado=0;
  void _barraNavega(int index){
    setState(() {
      _selecionado=index;
    });
  }

  final List<Widget> _paginas=[
   Login(),
   Registro(), 
   Configuracion(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_selecionado],
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed, 
      currentIndex: _selecionado,
      onTap: _barraNavega,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.login),label: 'Login'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Registrarse'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'configuracion')
      ]),
    );
  }
}
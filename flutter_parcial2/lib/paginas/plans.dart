import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget {
  const Tarjeta({super.key});

  @override
  Widget build(BuildContext context) {
   final List _formulario = [
      _imagen(),
      SizedBox(
        height: 10,
      ), //espacio
      _numbertarjetainput(),
      SizedBox(
        height: 10,
      ), //espacio
      _mesinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _anioinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _cvvinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _titulardinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _correoinput()
    ];

    return Column(
      children: [
        Expanded(
          // height: 300,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _formulario.length,
              itemBuilder: (context, index) {
                return _formulario[index];
              }),
        ),
      ],
    );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Image.asset("assets/pay.png")); //imagen interna
    //Image.network("https://cdn-icons-png.flaticon.com/512/6681/6681204.png"),//imagen externa
  }

  Container _numbertarjetainput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueAccent)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        //agregar icono fuera del texfield
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              hintText: 'Ingrese numero de tarjeta',
              labelText: 'Numero de tarjeta',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _mesinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueAccent)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        //agregar icono fuera del texfield
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              hintText: 'Ingrese mes',
              labelText: 'Mes',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _anioinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueAccent)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        //agregar icono fuera del texfield
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              hintText: 'Ingrese año',
              labelText: 'Año',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _cvvinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueAccent)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        //agregar icono fuera del texfield
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.password,
                color: Colors.white,
              ),
              hintText: 'Ingrese cvv',
                labelText: 'CVV2',
              border: InputBorder.none),
          obscureText: true,
        )); //caja de texto
  }
  Container _titulardinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueAccent)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        //agregar icono fuera del texfield
        child: TextFormField(
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                 hintText: 'Ingrese nombre',
              labelText: 'Titular de tarjeta',
                
                border: InputBorder.none),
            )); //caja de texto
  }


  Container _correoinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueAccent)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        //agregar icono fuera del texfield
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Ingrese su correo',
              labelText: 'Correo',
              border: InputBorder.none),
        )); //caja de texto
  }
}
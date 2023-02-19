import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    final List _formulario = [
      _imagen(),
      SizedBox(
        height: 10,
      ), //espacio
      _carnetinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _nombreinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _apellidoinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _direccioninput(),
      SizedBox(
        height: 10,
      ), //espacio
      _passwordinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _confirpasswordinput(),
      SizedBox(
        height: 10,
      ), //espacio
      _correoinput()
    ];

    return Column(
      children: [
        Text(
            "Evelyn Beatriz Andrade Moran  -   25-2238-2919"), //caja de texto o label
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
        child: Image.asset("assets/registro2.jpg")); //imagen interna
    //Image.network("https://cdn-icons-png.flaticon.com/512/6681/6681204.png"),//imagen externa
  }

  Container _carnetinput() {
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
                Icons.perm_identity,
                color: Colors.purpleAccent,
              ),
              hintText: 'Ingrese su carnet',
              labelText: 'Carnet',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _nombreinput() {
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
                color: Colors.purpleAccent,
              ),
              hintText: 'Ingrese su Nombre',
              labelText: 'Nombre',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _apellidoinput() {
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
                color: Colors.purpleAccent,
              ),
              hintText: 'Ingrese su apellido',
              labelText: 'Apellido',
              border: InputBorder.none),
        )); //caja de texto
  }

  Container _direccioninput() {
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
                  Icons.directions,
                  color: Colors.purpleAccent,
                ),
                hintText: 'Ingrese su direccion',
                labelText: 'Direccion',
                border: InputBorder.none),
            maxLines: 3)); //caja de texto
  }

  Container _passwordinput() {
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
                color: Colors.purpleAccent,
              ),
              hintText: 'Ingrese su contraseña',
              labelText: 'Contraseña',
              border: InputBorder.none),
          obscureText: true,
        )); //caja de texto
  }

  Container _confirpasswordinput() {
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
                color: Colors.purpleAccent,
              ),
              hintText: 'Confirme su contraseña',
              labelText: 'Confirmacion contraseña',
              border: InputBorder.none),
          obscureText: true,
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
                color: Colors.purpleAccent,
              ),
              hintText: 'Ingrese su correo',
              labelText: 'Correo',
              border: InputBorder.none),
        )); //caja de texto
  }
}

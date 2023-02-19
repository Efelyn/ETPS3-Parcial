import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
      
        SizedBox(
          height: 10,
        ),//espacio
        
        Text("Evelyn Beatriz Andrade Moran  -   25-2238-2919"),//caja de texto o label  

         _imagen(),
          _usuarioinput(),
          SizedBox(
          height: 10,
        ),//espacio
          _passwordinput()
        
      ],
    );
  }

  Container _imagen(){
    return  Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Image.asset("assets/loging.png")); //imagen interna
          //Image.network("https://cdn-icons-png.flaticon.com/512/6681/6681204.png"),//imagen externa
  }

  Container _usuarioinput(){
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
              icon: Icon(Icons.person,color: Colors.purpleAccent,),
              hintText: 'Ingrese su usuario',
              labelText: 'Usuario',
              
              border: InputBorder.none),
          ));//caja de texto
  }  
 
  Container _passwordinput(){
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
              icon: Icon(Icons.password,color: Colors.purpleAccent,),
              hintText: 'Ingrese su contraseña',
              labelText: 'Contraseña',
              border: InputBorder.none),
              obscureText: true,
          ));//caja de texto
  }
 
}
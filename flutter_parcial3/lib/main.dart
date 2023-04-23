import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'modelo/nasa.dart';

void main() {
  runApp(const ApiNasa());
}

class ApiNasa extends StatefulWidget {
  const ApiNasa({super.key});

  @override
  State<ApiNasa> createState() => _ApiNasaState();
}

class _ApiNasaState extends State<ApiNasa> {
     
  late Future<List<Nasa>> _listadonasa;
  
  Future<List<Nasa>> _getnasa() async{
    final response = await http.get(Uri.parse(
      "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY"));

      List<Nasa> gif=[];
      if (response.statusCode == 200) {
      String bodys = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(bodys);
      for (var item in jsonData["photos"]) {
        gif.add(Nasa(item["camera"]["full_name"], item["img_src"]));
      }
      return gif;
    } else {
      throw Exception("Falla en conectarse");
    }
  }
  
  @override
  void initState() {
    super.initState();
    _listadonasa = _getnasa();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Api Rest nasa",
      home: Scaffold(
          appBar: AppBar(
            title: Text(" Parcial_3 Api Nasa"),
          ),
          body: FutureBuilder(
            future: _listadonasa,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // print(snapshot.data);
                return GridView.count(
                  crossAxisCount: 2,
                  children: _listadonasas(snapshot.requireData),
                );
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Text("Soy error");
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )),
    );
  }
  List<Widget> _listadonasas(List<Nasa> data) {
    List<Widget> gifs = [];
    for (var gif in data) {
      gifs.add(Card(
          child: Column(
        children: [
          Expanded(
            child: Image.network(
              gif.url,
              fit: BoxFit.fill,
            ),
          ),
        ],
      )));
    }
    return gifs;
  }
}
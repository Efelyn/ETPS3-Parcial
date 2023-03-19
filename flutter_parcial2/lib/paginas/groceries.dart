import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parcial2/json/all_json.dart';

import 'package:flutter_parcial2/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

class Comida extends StatefulWidget {
  const Comida({super.key});

  @override
  State<Comida> createState() => _ComidaState();
}

class _ComidaState extends State<Comida> {
   int MenuActivo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }
  PreferredSizeWidget getAppBar() {
     return AppBar(
      backgroundColor: bgColor,
      centerTitle: true,
      leading: IconButton(
        icon: Text(
          "Comida",
          style: TextStyle(
              fontSize: 14, color: primary, fontWeight: FontWeight.w500),
        ),
        onPressed: null,
      ),
      
      title: Container(
          width: 155,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: white.withOpacity(0.05)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      MenuActivo = 0;
                    });
                  },
                  child: Container(
                    width: 75,
                    height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MenuActivo == 0
                            ? white.withOpacity(0.3)
                            : Colors.transparent),
                    child: Center(
                      child: Text(
                        "Hamburguesas",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      MenuActivo = 1;
                    });
                  },
                  child: Container(
                    width: 75,
                    height: 28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MenuActivo == 1
                            ? white.withOpacity(0.3)
                            : Colors.transparent),
                    child: Center(
                      child: Text(
                        "pizzas",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget getBody() {          
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                          
      children: List.generate(comida.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: (tamanio.width - 30) * 0.4,
                      child: Row(children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: NetworkImage(comida[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comida[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),                              
                            ],
                          ),
                        )
                      ]),
                    ),                   
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
            
          ),
        )
      ],
    );
  } 
}

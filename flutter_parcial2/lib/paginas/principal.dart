import 'package:flutter/material.dart';
import 'package:flutter_parcial2/paginas/recipes.dart';
import 'package:flutter_parcial2/paginas/plans.dart';
import 'package:flutter_parcial2/paginas/groceries.dart';
import 'package:flutter_parcial2/paginas/account.dart';

import 'package:flutter_parcial2/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0; //inciar index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: paginaIndex,
      children: [
        Utencilios(),
        Tarjeta(),
        Comida(),
        Cuenta(),
      ],
    );
  }

  Widget getFooter(){
     List iconosItems = [
      LineIcons.utensils,
      LineIcons.creditCard,
      LineIcons.dinerSClubCreditCard,
      LineIcons.peopleCarry,
    ];
    List textoItems = [
      "Recipes",
      "Plans",
      "Groceries",
      "Account"
    ];
    return Container(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(textoItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      paginaIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        iconosItems[index],
                        color: paginaIndex == index
                            ? primary
                            : white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(textoItems[index],
                          style: TextStyle(
                              fontSize: 10,
                              color: paginaIndex == index
                                  ? primary
                                  : white)),
                    ],
                  ),
                );
              })),
        ),
      ),

    );
  }
}
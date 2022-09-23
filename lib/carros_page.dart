import 'package:flutter/material.dart';
import 'package:saiba_mais/page_potencia.dart';
import 'package:saiba_mais/Widgets/globals_widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CarrosModelo extends StatefulWidget {

  @override
  State<CarrosModelo> createState() => _CarrosModeloState();
}

class _CarrosModeloState extends State<CarrosModelo> {

  void _escolhaClassic(){


    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Potencia("assets/images/classic.jpg",))

    );
  }
  void _escolhaGol(){


    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Potencia("assets/images/gol.jpeg",))

    );
  }
  void _escolhaLogan(){


    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Potencia("assets/images/logan.png",))

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body:Container(
          height: MediaQuery.of(context).size.height ,

      child: SingleChildScrollView(

      child: Container(
        padding: EdgeInsets.all(38),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
                child: (
                  Text("Escolha seu carro",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontStyle:FontStyle.italic ,
                        fontSize: 35
                    ),

                  )

                ),
            ),
        GestureDetector(
            onTap: _escolhaClassic,
            child: CustomContainer("assets/images/classic.jpg","Classic")
        ),
        GestureDetector(
          onTap: _escolhaGol,
            child: CustomContainer("assets/images/gol.jpeg","Gol")
        ),
        GestureDetector(
          onTap: _escolhaLogan,
            child: CustomContainer("assets/images/logan.png","Logan")
        )
          ]

        ),

        ),

      )
      ),
        );
  }
}

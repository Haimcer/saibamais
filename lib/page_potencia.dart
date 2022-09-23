import 'package:flutter/material.dart';
import 'package:saiba_mais/carros_page.dart';

class Potencia extends StatefulWidget {

  String carro;
  Potencia(this.carro);


  @override
  State<Potencia> createState() => _PotenciaState();
}

class _PotenciaState extends State<Potencia> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,

        body: SingleChildScrollView(

          child: Container(
            padding: EdgeInsets.all(38),
            child: Column(
              children: <Widget>[
            Container(
              width:150,
            height: 150,
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(image: AssetImage("${widget.carro}")),
              /*borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),*/
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],

            ),

        ),

                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: (
                      Text("Qual a potência ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontStyle:FontStyle.italic ,
                            fontSize: 35
                        ),

                      )

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("1.0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic ,
                              fontSize: 30

                          )
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                     Text("1.5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic ,
                              fontSize: 30

                          )
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],

                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("2.0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic ,
                              fontSize: 30

                          )
                      ),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:15),
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 15,
                        shadowColor: Colors.white),
                    child: Text(
                      'Avançar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context,MaterialPageRoute(builder: (context) => CarrosModelo() ));
                    },
                  ),
                ),
              ],

            ),

          ),

        )
    );
  }
}

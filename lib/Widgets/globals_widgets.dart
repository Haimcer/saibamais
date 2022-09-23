import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String image;
  String nome;

  CustomContainer(this.image,this.nome);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Image.asset("${image}",
                height: 150,
                width: 150,
              ),
              Text("${nome}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 30

                  )
              )
            ]
        )
    );
  }
}
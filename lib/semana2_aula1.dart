// Stateless - quando a tela não tem estado, ela não vai mudar
// Statefull - a tela tem estado, ela pode mudar, exemplo: um contador, uma tela que carrega uma lista do backend e é alterada

import 'package:flutter/material.dart';

class ContadorWidget extends StatefulWidget {
  @override
  _ContadorWidget createState() => _ContadorWidget();
}

class _ContadorWidget extends State<ContadorWidget> {
  int contador = 0;

  void _incrementar() {
    setState(() { // esse método setState basicamente avisa o flutter para ele reconstruir o widget por que algo mudou!
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Contador! ${contador}"),
        ElevatedButton(onPressed: () {
          _incrementar();
        }, 
        child: Text("Adicionar 1")
        )
      ],
    );
  }
}
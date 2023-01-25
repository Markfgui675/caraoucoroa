import 'package:caraoucoroa/TelaSorteio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  void _abrirTela(){

    String? resultado;
    var random = Random();
    var randomNUmber = random.nextInt(2);

    if (randomNUmber==0){
      resultado = 'imagens/moeda_cara.png';
    } else if(randomNUmber==1){
      resultado = 'imagens/moeda_coroa.png';
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaSorteio(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF63BF8B),

      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 60),
                      child: Image.asset('imagens/logo.png'),),

              GestureDetector(onTap: _abrirTela, child: Image.asset('imagens/botao_jogar.png'))
            ],
          ),
        ),
      ),
    );
  }
}

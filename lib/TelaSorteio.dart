import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaSorteio extends StatefulWidget {

  String? image;

  TelaSorteio(this.image);

  @override
  State<TelaSorteio> createState() => _TelaSorteioState();
}

class _TelaSorteioState extends State<TelaSorteio> {

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
                child: Image(image: this.image)),

              GestureDetector(onTap: (){Navigator.pop(context);}, child: Image.asset('imagens/botao_voltar.png'))
            ],
          ),
        ),
      ),
    );
  }
}

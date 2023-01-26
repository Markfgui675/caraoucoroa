import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaSorteio extends StatefulWidget {

  String? valor;

  TelaSorteio(this.valor);

  @override
  State<TelaSorteio> createState() => _TelaSorteioState();
}

class _TelaSorteioState extends State<TelaSorteio> {

  var _image = AssetImage('imagens/moeda_cara.png');

  @override
  Widget build(BuildContext context) {

    if(widget.valor == 'cara'){
      _image = AssetImage('imagens/moeda_cara.png');
    } else if(widget.valor == 'coroa'){
      _image = AssetImage('imagens/moeda_coroa.png');
    }

    return Scaffold(
      backgroundColor: Color(0xFF63BF8B),

      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 60),
                child: Image(image: this._image)),

              Padding(padding: EdgeInsets.only(bottom: 60),
                child: Text('${widget.valor}', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),),

              GestureDetector(onTap: (){Navigator.pop(context);}, child: Image.asset('imagens/botao_voltar.png'))
            ],
          ),
        ),
      ),
    );
  }
}

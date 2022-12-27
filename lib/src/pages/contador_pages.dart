import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState(){
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State{

  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de TAP\'s: ', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        SizedBox(width: 80.0,),
        FloatingActionButton(child: Icon(Icons.remove_circle), onPressed: _sustraer),
        SizedBox(width: 80.0,),
        FloatingActionButton(child: Icon(Icons.add_circle), onPressed: _agregar),
      ],
    );
    
  }

  void _agregar(){
    setState(() {
      _conteo++;
    });
  }

  void _sustraer(){
    setState(() {
      _conteo--;
    });
  }

  void _reset(){
    setState(() {
      _conteo = 0;
    });
  }
}
import 'package:flutter/material.dart';
import 'package:prueba/models/episodios_model.dart';

class Detalles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Personajes result =
        ModalRoute.of(context)!.settings.arguments as Personajes;
    return Scaffold(
      appBar: AppBar(
        title: Text(result.name!),
      ),
      backgroundColor: Colors.red,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
              image: new AssetImage('assets/rick.jpg'),
              fit: BoxFit.cover,
              color: Colors.blue,
              colorBlendMode: BlendMode.darken),
          new Center(
            child: Image.network(result.image!),
          ),
        ],
      ),
      //body: Center(
      // child: Image.network(result.image!),
      //),
    );
  }
}

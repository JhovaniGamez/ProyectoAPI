import 'package:flutter/material.dart';
import 'package:prueba/models/episodios_model.dart';
import 'package:prueba/providers/episodio_provider.dart';

class HomePage extends StatelessWidget {
  final _providerNew = ProviderCha();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RICK & MORTY       Gamez Jhovani'),
      ),
      body: FutureBuilder(
        future: _providerNew.obtenerPersonaje(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Personajes>> snapshot) {
          final listpersonajes = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: listpersonajes!.length,
                itemBuilder: (BuildContext context, int i) {
                  final result = listpersonajes[i];
                  return _DisenosCha(result);
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class _DisenosCha extends StatelessWidget {
  final Personajes result;
  _DisenosCha(this.result);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, '/detalles', arguments: result),
      title: Text(result.name!),
      subtitle: Text(result.status!),
      leading: Text(result.species!),
      trailing: Image.network(result.image!),
    );
  }
}

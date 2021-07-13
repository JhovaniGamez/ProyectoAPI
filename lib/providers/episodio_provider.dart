import 'package:dio/dio.dart';
import 'package:prueba/models/episodios_model.dart';

class ProviderCha {
  final _url = 'https://rickandmortyapi.com/api/character';
  final _http = Dio();

  Future<List<Personajes>> obtenerPersonaje() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data['results'];
    final listaPersonajes =
        data.map((results) => Personajes.fromMapJson(results)).toList();

    //listaNoticias.map((dato) => print(dato.title));
    //print(listaNoticias);
    return listaPersonajes;
    //data.map(())=> AmiiboModel.fromMapJson((amiibo)).toList();
  }
}

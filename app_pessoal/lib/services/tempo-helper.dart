import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class TempoHelper {
  String coords;
  String url =
      'http://api.weatherapi.com/v1/current.json?key=810ecd10959a4d3a8c1124959210802&q=';

  TempoHelper() {}

  Future<Tempo> getTempo() async {
    Position pos = await getPosition();
    coords = '${pos.latitude},${pos.longitude}';
    url += coords;

    final response = await http.get(url, headers: null);

    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      Tempo atual = Tempo.fromJson(result);
      return atual;
    } else {
      print('Erro obtendo o tempo');
    }
  }

  Future<Position> getPosition() async {
    Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return pos;
  }
}

class Tempo {
  int codigo;
  String descricao;
  double latitude;
  double longitude;
  String local;
  String data;

  Tempo(
      {this.local,
      this.data,
      this.latitude,
      this.longitude,
      this.codigo,
      this.descricao});

  factory Tempo.fromJson(dynamic json) {
    return Tempo(
      local: json['location']['name'],
      data: json['location']['localtime'],
      latitude: json['location']['lat'],
      longitude: json['location']['lon'],
      codigo: json['current']['condition']['code'],
      descricao: json['current']['condition']['text'],
    );
  }
}

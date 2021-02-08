/*import 'dart:async';
import 'dart:convert';

import 'package:duepay_mobile_app/components/alerta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../global.dart';
import 'package:query_params/query_params.dart';

class HttpHelper {
  final _jwtToken = GetStorage();

  Future<String> getToken() async {
    String jwtToken = _jwtToken.read('jwtToken') ?? '';
    return jwtToken;
  }

  Future<void> setToken(String jwtToken) async {
    _jwtToken.write('_jwtToken', jwtToken);
  }

  Future<Map> executePost(
      {@required Map body, @required String route, int timeoutNew = 30}) async {
    String token = await getToken();

    Map<String, String> headers = {
      "Content-type": "application/json",
      "X-Auth-Token-Update": token
    };

    final response = await http
        .post(SERVER_NAME + route, body: jsonEncode(body), headers: headers)
        .timeout(Duration(seconds: timeoutNew));

    if (response.statusCode >= 500) {
      throw Exception('Ouve um erro no servidor');
    } else if (response.statusCode >= 400) {
      if (response.statusCode == 401) {
        //GetIt.I.get<NavigationService>().logout();
        throw Exception('Token expirado');
      }

      throw Exception('Existe um erro na consulta');
    }

    Map<String, String> responseHeaders = response.headers;
    String newToken = responseHeaders['x-auth-token-update'];

    await setToken(newToken);

    Map<String, dynamic> mapResponse = json.decode(response.body);

    return mapResponse;
  }

  Future<Map> executePut(
      {@required Map body, @required String route, int timeoutNew = 30}) async {
    String token = await getToken();
    Map<String, String> headers = {
      "Content-type": "application/json",
      "X-Auth-Token-Update": token
    };

    final response = await http
        .put(SERVER_NAME + route, body: jsonEncode(body), headers: headers)
        .timeout(Duration(seconds: timeoutNew));

    if (response.statusCode >= 500) {
      throw Exception('Ouve um erro no servidor');
    } else if (response.statusCode >= 400) {
      throw Exception('Existe um erro na consulta');
    }

    Map<String, dynamic> mapResponse = json.decode(response.body);
    return mapResponse;
  }

  Future<Map<String, dynamic>> executeGet(
      {Map filters, @required String route, int timeoutNew = 4}) async {
    URLQueryParams queryParams = URLQueryParams();

    if (filters != null) {
      filters.forEach((key, value) {
        queryParams.append(key, value);
      });
    }

    String token = await getToken();
    String queryParameters =
        (queryParams.toString().isNotEmpty) ? '?${queryParams.toString()}' : '';

    Map<String, String> headers = {
      "Content-type": "application/json",
      "X-Auth-Token-Update": token
    };

    final String serviceRoute = SERVER_NAME + route + queryParameters;
    final response = await http.get(serviceRoute, headers: headers);

    if (response.statusCode >= 500) {
      genericAlert(
        texto:
            'Não foi possível a comunicação com o servidor.\r\n Favor tentar mais tarde.',
        confirm: () => Get.back(),
      );
      throw Exception('Ouve um erro no servidor');
    } else if (response.statusCode >= 400) {
      if (response.statusCode == 401) {
        genericAlert(
          texto:
              'Seu tempo de conexão expirou!!\r\n Você precisa se logar novamente.',
          confirm: () => Get.offAllNamed('/login'),
        );
        throw Exception('Token expirado');
      }
      genericAlert(
        texto: 'Foi encontrado um erro ao realizaar sua solicitação.',
        confirm: () => Get.back(),
      );
      throw Exception('Existe um erro na consulta');
    }

    Map<String, String> responseHeaders = response.headers;
    String newToken = responseHeaders['x-auth-token-update'];

    await setToken(newToken);

    final mapResponse = json.decode(response.body);
    return mapResponse;
  }
}
*/

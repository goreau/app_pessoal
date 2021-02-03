import 'package:app_pessoal/screens/estado/estado_page.dart';
import 'package:app_pessoal/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../screens/login/cadastrar_site.dart';
import '../screens/login/login_page.dart';
import '../screens/splash/splash_page.dart';

class Routes {
  static const SPLASH = '/';
  static const CADASTRAR_SITE = '/cadastrar-site';
  static const LOGIN = '/login';
  static const HOME = '/homepage';
  static const ESTADO = '/estado';
}

Map<String, WidgetBuilder> rotas = {
  Routes.SPLASH: (context) => SplashPage(),
  Routes.LOGIN: (context) => LoginPage(),
  Routes.CADASTRAR_SITE: (context) => CadastrarSite(),
  Routes.HOME: (context) => HomePage(),
  Routes.ESTADO: (context) => EstadoPage(),
};

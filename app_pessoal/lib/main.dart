import 'package:app_pessoal/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'App Pessoal',
      routes: rotas,
    );
  }
}

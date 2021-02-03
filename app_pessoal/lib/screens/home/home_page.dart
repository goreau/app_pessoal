import 'package:app_pessoal/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pessoal'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FlatButton(
          child: Text('Registrar'),
          onPressed: () {
            Get.toNamed(Routes.ESTADO);
          },
        ),
      ),
    );
  }
}

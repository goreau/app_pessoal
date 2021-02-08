import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstadoController extends GetxController {
  TextEditingController motivoController = TextEditingController();
  var avatarOpt = 0.obs;

  void opcao() {
    Get.defaultDialog(
      title: 'Detalhar?',
      content: Column(
        children: [
          TextField(
            controller: motivoController,
            keyboardType: TextInputType.text,
            maxLines: 5,
            decoration: InputDecoration(
                labelText: 'Conte-nos mais sobre seu estado: $avatarOpt',
                hintMaxLines: 2,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 4.0))),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Não, Apenas Registrar',
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:app_pessoal/screens/estado/estado_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class EstadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoje estou me sentindo...'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: AvatarButton(
                    message: 'Muito feliz',
                    img: 'assets/emoticon/muitofeliz.png',
                    opt: 5,
                  ),
                ),
                Expanded(
                  child: AvatarButton(
                    message: 'Animado',
                    img: 'assets/emoticon/animado.png',
                    opt: 4,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: AvatarButton(
                    message: 'Triste',
                    img: 'assets/emoticon/cansado.png',
                    opt: 3,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: AvatarButton(
                    message: 'Com raiva',
                    img: 'assets/emoticon/irado.png',
                    opt: 2,
                  ),
                ),
                Expanded(
                  child: AvatarButton(
                    message: 'Furioso',
                    img: 'assets/emoticon/muitoputo.png',
                    opt: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarButton extends StatelessWidget {
  final String message;
  final String img;
  final int opt;

  EstadoController _ctrl = Get.put(EstadoController());

  AvatarButton({this.message, this.img, this.opt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: FittedBox(
          child: FloatingActionButton(
            heroTag: "bt_$opt",
            tooltip: message,
            child: Image.asset(img),
            backgroundColor: kAvatarBackground,
            onPressed: () {
              _ctrl.avatarOpt.value = opt;
              _ctrl.opcao();
            },
          ),
        ),
      ),
    );
  }
}

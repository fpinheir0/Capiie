import 'dart:io';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:capiie/modules/pages/views/page_register.dart';
import 'package:capiie/modules/pages/views/preview_page.dart';
import 'package:capiie/utilidades/delayed_animation.dart';
import 'package:capiie/widgtes/anexo.dart';
import 'package:flutter/material.dart';
import 'package:camera_camera/camera_camera.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class pageFoto extends StatefulWidget {
  pageFoto({Key? key}) : super(key: key);

  @override
  _pageFoto createState() => _pageFoto();
}

class _pageFoto extends State<pageFoto> {
  File? arquivo;

  showPreview(file) async {
    File? arq = await Get.to(() => PreviewPage(file: file));

    if (arq != null) {
      setState(() => arquivo = arq);
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF8185E2),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: AvatarGlow(
                    endRadius: 70,
                    duration: Duration(seconds: 3),
                    glowColor: Color(0xFF9195FF),
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 2),
                    startDelay: Duration(seconds: 1),
                    child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Image.asset(
                            'assets/images/capiie.png',
                            width: 45,
                          ),
                          radius: 30.0,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20),
                child: DelayedAnimation(
                    child: Text(
                      "Ei! Bora tirar uma foto para que possamos colocar em seu cartão ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    delay: 1000,
                    direction: 'up'),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.center,
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DelayedAnimation(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (arquivo != null) Anexo(arquivo: arquivo!),
                        ElevatedButton.icon(
                          onPressed: () => Get.to(
                            () => CameraCamera(
                              onFile: (file) => showPreview(file),
                            ),
                          ),
                          icon: Icon(Icons.camera_alt),
                          label: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('Tire uma foto'),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5.0,
                              textStyle: TextStyle(
                                fontSize: 18,
                              )),
                        ),
                      ]),
                  delay: 2000,
                  direction: "up",
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                ),
              ),
              DelayedAnimation(
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: RegisterResumoPage(),
                          type: PageTransitionType.rightToLeft,
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 1000),
                          reverseDuration: Duration(milliseconds: 1000),
                        ),
                      ),
                    },
                    child: _animatedButtonUI,
                  ),
                  delay: 3000,
                  direction: 'up'),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
        height: 60,
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            'CONTINUE',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8185E2),
            ),
          ),
        ),
      );
}

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class pageCamera extends StatefulWidget {
  @override
  _pageCamera createState() => _pageCamera();
}

class _pageCamera extends State<pageCamera> {
  final int delayedAmount = 500;
  List<CameraDescription> cameras = [];
  CameraController? controller;
  XFile? imagem;
  Size? size;

  @override
  void initState() {
    super.initState();
    _loadCameras();
  }

  _loadCameras() async {
    try {
      cameras = await availableCameras();
      _startCamera();
    } on CameraException catch (e) {
      print(e.description);
    }
  }

  _startCamera() {
    if (cameras.isEmpty) {
      print("Câmera não foi encontrada");
    } else {
      _previewCamera(cameras.first);
    }
  }

  _previewCamera(CameraDescription camera) async {
    final CameraController cameraController = CameraController(
      camera,
      enableAudio: false,
      ResolutionPreset.high,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    controller = cameraController;

    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      print(e.description);
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tire sua Foto aqui (:"),
        backgroundColor: Color(0xFF8185E2),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}

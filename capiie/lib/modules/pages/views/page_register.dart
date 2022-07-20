// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:capiie/utilidades/delayed_animation.dart';
// import 'package:flutter/material.dart';

// class RegisterResumoPage extends StatefulWidget {
//   RegisterResumoPage({Key? key}) : super(key: key);
//   static Page<dynamic> page() => MaterialPage(child: RegisterResumoPage());
//   @override
//   State<RegisterResumoPage> createState() => _RegisterResumoPageState();
// }

// class _RegisterResumoPageState extends State<RegisterResumoPage> {
//   final int delayedAmount = 500;

//   bool texterror = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF8185E2),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(12.0),
//           child: Column(children: <Widget>[
//             Container(
//               child: Center(
//                 child: AvatarGlow(
//                   endRadius: 70,
//                   duration: Duration(seconds: 3),
//                   glowColor: Color(0xFF9195FF),
//                   repeat: true,
//                   repeatPauseDuration: Duration(seconds: 2),
//                   startDelay: Duration(seconds: 1),
//                   child: Material(
//                       elevation: 8.0,
//                       shape: CircleBorder(),
//                       child: CircleAvatar(
//                         backgroundColor: Colors.grey[100],
//                         child: Image.asset(
//                           'assets/images/capiie.png',
//                           width: 45,
//                         ),
//                         radius: 30.0,
//                       )),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(right: 20.0, left: 20),
//               child: DelayedAnimation(
//                 child: Text(
//                   "Resumo das Informações",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0,
//                       color: Colors.white),
//                 ),
//                 delay: 1000,
//                 direction: "up",
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 0.0, bottom: 8.0, top: 26),
//                     child: Text("Detalhes do Cadastro"),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(),
//             Column(
//               children: [],
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }

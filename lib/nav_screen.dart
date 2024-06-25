// import 'package:flutter/material.dart';
// import 'package:flutter_second_app/home_screen.dart';
// import 'package:flutter_second_app/setting_screen.dart';

// class NavScreen extends StatelessWidget {
//   const NavScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Devoir 2"),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: const Text("Shop"),
//             trailing: Icon(Icons.arrow_forward_ios),
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => const HomeScreen(),
//                 ),
//               );
//             },
//           ),
//           ListTile(
//             title: Text("Settings"),
//             trailing: Icon(Icons.arrow_forward_ios),
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => const SettingScreen(),
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

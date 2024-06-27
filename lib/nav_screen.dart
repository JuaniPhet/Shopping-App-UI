import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'setting_screen.dart';
import 'cart_screen.dart';
import 'wallet_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indexSelected,
        children: const [
          HomeScreen(),
          WalletScreen(),
          CartScreen(),
          SettingScreen(),
        ],
      ),
      // appBar: AppBar(
      //   title: const Text("Devoir 2"),
      // ),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       title: const Text("Shop"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       onTap: () {
      //         Navigator.of(context).push(
      //           MaterialPageRoute(
      //             builder: (context) => const HomeScreen(),
      //           ),
      //         );
      //       },
      //     ),
      //     ListTile(
      //       title: Text("Settings"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       onTap: () {
      //         Navigator.of(context).push(
      //           MaterialPageRoute(
      //             builder: (context) => const SettingScreen(),
      //           ),
      //         );
      //       },
      //     )
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(255, 95, 95, 95),
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: indexSelected,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: (screen) {
          setState(() {
            indexSelected = screen;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

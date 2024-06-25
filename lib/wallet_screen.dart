import 'package:flutter/material.dart';
import 'package:flutter_second_app/cart_screen.dart';
import 'package:flutter_second_app/home_screen.dart';
import 'package:flutter_second_app/setting_screen.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int indexSelected = 1;
  List<Widget> screenList = const [
    HomeScreen(),
    WalletScreen(),
    CartScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(255, 95, 95, 95),
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            indexSelected = index;
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => screenList[indexSelected],
              ),
            );
          });
        },
        currentIndex: indexSelected,
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

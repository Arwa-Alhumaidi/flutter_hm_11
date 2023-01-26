import 'package:flutter/material.dart';
import 'package:hm_11/pages/cart.dart';
import 'package:hm_11/pages/product.dart';
import 'package:hm_11/pages/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = [const HomePage(), const Productp(), const Cart()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Login'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}

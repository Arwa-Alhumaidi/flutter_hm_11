import 'package:flutter/material.dart';
import 'package:hm_11/models/data.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.network('https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png'),
        actions: const [
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
          Icon(Icons.search, color: Colors.black),
          Icon(Icons.list, color: Colors.black),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var product in Data.cart)
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 400,
                    width: 350,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(product.image),
                          height: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            product.name,
                            style: const TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text(
                                product.price,
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

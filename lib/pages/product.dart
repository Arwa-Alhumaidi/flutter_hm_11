import 'package:flutter/material.dart';
import 'package:hm_11/models/data.dart';

import 'added.dart';

class Productp extends StatelessWidget {
  const Productp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 213, 213),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Image(
                  image: NetworkImage('https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png'),
                  height: 80,
                  width: 80,
                ),
                SizedBox(
                  width: 250,
                ),
                Icon(Icons.more_vert),
                Icon(Icons.search_rounded),
                Icon(Icons.shopping_cart),
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var product in Data.products)
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (Context) => SingleChildScrollView(
                                child: Container(
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: Added(
                                      product: product,
                                    ))),
                          );
                        },
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
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                  'https://cdn.salla.sa/Aedxd/design/mv1lfttRfUl1yfM9pNxsy58pPWJo172H0wclRFGj.jpg?rand=0.630504347325717?rand=0.5184868075117148?rand=0.3400214384546366?rand=0.46533691104156705'),
            ),
            const Text('hhhh'),
          ],
        ),
      ),
    );
  }
}

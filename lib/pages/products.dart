import 'package:flutter/material.dart';
import 'package:hm_11/pages/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            const Text('data'),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 350.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  Component(),
                  SizedBox(
                    width: 10,
                  ),
                  Component(),
                  SizedBox(
                    width: 10,
                  ),
                  Component(),
                ],
              ),
            ),
            const UnderC(),
            const SizedBox(
              height: 10,
            ),
            const UnderC(),
            const SizedBox(
              height: 10,
            ),
            const UnderC(),
          ],
        ),
      ),
    );
  }
}

class UnderC extends StatelessWidget {
  const UnderC({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Image(
                  image: NetworkImage(
                      'https://cdn.salla.sa/Aedxd/design/eSPIKpVma6Yo0WftvwwVEGpjnOGdupA3rCX63gG0.jpg?rand=0.9422407322490227?rand=0.7949860411290293?rand=0.7783700531809306?rand=0.8793837302711434')),
            ],
          ),
        ),
      ]),
    );
  }
}

class Component extends StatelessWidget {
  const Component({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: 200,
      height: 100,
      child: Column(
        children: const [
          Expanded(
            flex: 10,
            child: Image(
              image: NetworkImage('https://cdn.salla.sa/Aedxd/b3hTFtpS0z8gpopInh1YDxifGRAmy66kcuVbDxfS.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text('طارد السحالي "الوزغ" طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Lizard Repellent',
                style: TextStyle(fontSize: 12)),
          )
        ],
      ),
    );
  }
}

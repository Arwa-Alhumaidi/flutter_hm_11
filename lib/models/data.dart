class Data {
  static List<Product> products = [
    Product(
        image: 'https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
        name: '- Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
        price: '200 SAR'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
        name: '- Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
        price: '270 SAR'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
        name: '- Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
        price: '2 SAR'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
        name: '- Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
        price: '500 SAR'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
        name: '- Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
        price: '1000 SAR')
  ];
  static List<Product> cart = [];
}

class Product {
  String image;
  String name;
  String price;
  Product({required this.image, required this.name, required this.price});
}

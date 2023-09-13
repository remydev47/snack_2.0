class Cookie {
  String name;
  String price;
  String image;
  Cookie({required this.name, required this.price, required this.image});
}

final cookies = [
  Cookie(name: "Chocolate Chips", price: "15 usd", image: "assets/1.png"),
  Cookie(name: "Peanut cookies", price: "10 usd", image: "assets/3.png"),
];

class Room {
  final int id, price;
  final String title, description, image;

  Room({required this.id, required this.price,required this.title, required this.description, required this.image});
}

// liste de chambre pour la demo
// pour la demo
List<Room> rooms = [
  Room(
    id: 1,
    price: 35000,
    title: "Chambre classique",
    image: "assets/images/Item_1.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Room(
    id: 2,
    price: 68000,
    title: "Chambre luxieuse parisienne",
    image: "assets/images/Item_2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Room(
    id: 9,
    price: 145000,
    title: "Royal luxe ",
    image: "assets/images/Item_3.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
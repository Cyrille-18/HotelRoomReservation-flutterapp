class Room {
  final int id, price;
  final String title, description, image;

  Room(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image});
}

// liste de chambre pour la demo
// pour la demo
List<Room> rooms = [
  Room(
    id: 1,
    price: 35000,
    title: "Chambre Simple",
    image: "assets/images/cbre1.jpg",
    description:
        "Découvrez notre chambre classique, offrant confort et élégance avec un lit douillet, une salle de bain moderne et des équipements essentiels. Profitez d'un séjour agréable à un excellent rapport qualité-prix. Réservez dès maintenant pour une escapade reposante.",
  ),
  Room(
      id: 2,
      price: 68000,
      title: "Chambre luxieuse parisienne",
      image: "assets/images/chbre2.jpg",
      description:
          "Découvrez notre chambre luxueuse parisienne, un mélange parfait de raffinement et de confort. Profitez d'un lit king-size, d'une salle de bain en marbre, et d'une vue imprenable sur les toits de Paris. Réservez dès maintenant pour une expérience inoubliable au cœur de la ville lumière."),
  Room(
    id: 9,
    price: 145000,
    title: "Royal luxe ",
    image: "assets/images/chre7.jpg",
    description:
        "Découvrez notre chambre Royal Luxe, une oasis d'élégance avec un lit king-size, une salle de bain en marbre somptueuse, et une vue panoramique exceptionnelle. Profitez de services exclusifs et d'équipements haut de gamme pour un séjour royal. Réservez dès maintenant pour une expérience majestueuse.",
  ),
];

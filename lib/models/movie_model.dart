class MovieModel {
  final String image;
  final DateTime dateTime;
  final String title;
  final String disc;
  bool isFav;
  final bool isFeatured;

  MovieModel({
    required this.isFeatured,
    required this.isFav,
    required this.dateTime,
    required this.disc,
    required this.image,
    required this.title,
  });

  static List<MovieModel> movieList = [
    MovieModel(
      image: "assets/images/image1.png",
      dateTime: DateTime(2025, 1, 10),
      title: "Shadows of Cairo",
      disc:
          "A thrilling mystery set in the streets of Cairo where secrets lurk in every alley.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image2.png",
      dateTime: DateTime(2025, 2, 12),
      title: "The Last Voyage",
      disc:
          "An epic sea journey of a captain seeking redemption after a great loss.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image3.png",
      dateTime: DateTime(2025, 3, 15),
      title: "Whispers in the Wind",
      disc:
          "A heartfelt drama about love letters carried across decades by the wind.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image4.png",
      dateTime: DateTime(2025, 4, 18),
      title: "Midnight Heist",
      disc:
          "A team of skilled thieves plans the ultimate museum robbery at midnight.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image5.png",
      dateTime: DateTime(2025, 5, 20),
      title: "Beneath the Waves",
      disc:
          "Divers uncover a sunken city that holds a terrifying ancient secret.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image6.png",
      dateTime: DateTime(2025, 6, 22),
      title: "Echoes of the Past",
      disc:
          "A detective investigates a cold case that links to his own childhood.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image7.png",
      dateTime: DateTime(2025, 7, 24),
      title: "Neon Streets",
      disc:
          "In a cyberpunk city, a hacker fights against a corrupt mega-corporation.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image8.png",
      dateTime: DateTime(2025, 8, 26),
      title: "The Forgotten Island",
      disc:
          "Explorers discover an uncharted island with creatures from another time.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image1.png",
      dateTime: DateTime(2025, 9, 28),
      title: "Broken Horizon",
      disc: "A post-apocalyptic story of survival and hope against all odds.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image2.png",
      dateTime: DateTime(2025, 10, 30),
      title: "Code of Silence",
      disc:
          "An undercover cop infiltrates a dangerous gang but struggles with his loyalty.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image3.png",
      dateTime: DateTime(2025, 11, 5),
      title: "Moonlit Promise",
      disc:
          "Two strangers meet every full moon, bound by a mysterious promise.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image4.png",
      dateTime: DateTime(2025, 12, 8),
      title: "Storm Chasers",
      disc:
          "A group of adventurers risk their lives to capture the perfect storm footage.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image5.png",
      dateTime: DateTime(2026, 1, 12),
      title: "Desert Mirage",
      disc: "A traveler in the Sahara discovers a city that shouldn’t exist.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image6.png",
      dateTime: DateTime(2026, 2, 14),
      title: "Crimson Tide",
      disc: "A submarine crew faces an impossible choice deep under the ocean.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image7.png",
      dateTime: DateTime(2026, 3, 18),
      title: "City of Glass",
      disc:
          "In a futuristic metropolis, a journalist uncovers a world-shaking conspiracy.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image8.png",
      dateTime: DateTime(2026, 4, 22),
      title: "Silent Forest",
      disc:
          "Hikers disappear in a forest where no bird has sung for a century.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image1.png",
      dateTime: DateTime(2026, 5, 25),
      title: "Iron Sky",
      disc:
          "A rebel pilot leads a daring mission against an oppressive space empire.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image2.png",
      dateTime: DateTime(2026, 6, 28),
      title: "The Alchemist’s Secret",
      disc:
          "A historian discovers a formula that could change the course of humanity.",
      isFav: false,
      isFeatured: true,
    ),
    MovieModel(
      image: "assets/images/image3.png",
      dateTime: DateTime(2026, 7, 30),
      title: "Edge of Tomorrow",
      disc:
          "A soldier relives the same battle over and over to find a way to win.",
      isFav: false,
      isFeatured: false,
    ),
    MovieModel(
      image: "assets/images/image4.png",
      dateTime: DateTime(2026, 8, 5),
      title: "Frozen Shadows",
      disc:
          "In the Arctic, scientists discover something buried deep in the ice.",
      isFav: false,
      isFeatured: false,
    ),
  ];
}

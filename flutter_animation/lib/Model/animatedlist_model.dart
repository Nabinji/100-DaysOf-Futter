class User {
  final String name;
  final String username;
  final String image;

  User({
    required this.name,
    required this.username,
    required this.image,
  });
}

List<User> users = [
  User(
    name: 'Jasmine Smith',
    username: ' @JazzyS',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-aGpatw32H3vwj6ZVhJew0zFKD-R1UlzL-N1AUu2kQ&s",
  ),
  User(
    name: 'Lucas Johnson',
    username: '@LucJ',
    image:
        "https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp",
  ),
  User(
    name: 'Emily Rodriguez',
    username: '@EmiRod',
    image:
        "https://img.freepik.com/free-photo/freedom-concept-with-hiker-mountain_23-2148107064.jpg",
  ),
  User(
    name: 'Ethan Brown',
    username: ' @EthBr',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZZYSsnncqDhroX4Ud9rgHCxpDeyLSN5PdG71BuDAk-ulL4CQCFtjL4lKVH26UIW9EOo&usqp=CAU",
  ),
  User(
    name: 'Ava Anderson',
    username: '@mikayla',
    image:
        "https://www.shutterstock.com/image-photo/profile-picture-smiling-millennial-asian-600nw-1836020740.jpg",
  ),
  User(
    name: 'Olivia Garcia',
    username: '@AvaA',
    image:
        "https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=",
  )
];

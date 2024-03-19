class UserDetail {
  String image;
  String name;
  bool currentMesage;
  String message;

  UserDetail({
    required this.image,
    required this.name,
    required this.message,
    required this.currentMesage,
  });
}

List<UserDetail> userItems = [
  UserDetail(
    image: "images/a.png",
    name: 'Kivomi Takada',
    message: 'The only true fear is the fear of...',
    currentMesage: true,
  ),
  UserDetail(
      image: "images/b.png",
      name: 'Itachi Uchiha',
      message: "People's lives don't end when t...",
      currentMesage: true,
      ),
  UserDetail(
    image: "images/c.png",
    name: 'Eren',
    message: 'Tatakai 😤',
    currentMesage: false,
  ),
  UserDetail(
    image: "images/d.png",
    name: 'Sukuna Ryomen',
    message: '😂😂😂',
    currentMesage: false,
  ),
  UserDetail(
    image: "images/e.png",
    name: 'Soma poti',
    message: 'The only true fear is the fear of...',
    currentMesage: false,
  ),
  UserDetail(
    image: "images/f.png",
    name: 'Eilly Pope',
    message: 'You okay there?',
    currentMesage: false,
  ),
  UserDetail(
    image: "images/g.png",
    name: 'Jota',
    message: 'Hello how are you?',
    currentMesage: false,
  ),
  UserDetail(
    image: "images/h.png",
    name: 'Aidemn Makram',
    message: 'I love you',
    currentMesage: false,
  ),
    UserDetail(
    image: "images/i.png",
    name: 'Sonam lee',
    message: 'I am learning flutter ',
    currentMesage: false,
  ),
  UserDetail(
    image: "images/j.png",
    name: 'Lovely',
    message: '❤️❤️❤️❤️❤️❤️❤️❤️❤️',
    currentMesage: false,
  ),
];

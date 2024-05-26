class SalonArtist {
  String image;
  String love;
  String chat;

  SalonArtist({
    required this.chat,
    required this.image,
    required this.love,
  });
}

List<SalonArtist> userInfo = [
  SalonArtist(
    image: "images/salon1.png",
    chat: "124",
    love: "1256",
  ),
  SalonArtist(
    image: "images/salon2.png",
    chat: "112",
    love: "1256",
  ),
  SalonArtist(
    image: "images/salon3.png",
    chat: "111",
    love: "256",
  ),
  SalonArtist(
    image: "images/salon4.png",
    chat: "231",
    love: "125",
  ),
  SalonArtist(
    image: "images/salon5.png",
    chat: "222",
    love: "1290",
  ),
  SalonArtist(
    image: "images/salon6.png",
    chat: "143",
    love: "189",
  ),
  SalonArtist(
    image: "images/salon7.png",
    chat: "1",
    love: "01",
  ),
  SalonArtist(
    image: "images/salon8.png",
    chat: "222",
    love: "122",
  ),
];
List<String> categoryList = [
  "About",
  "Portfolio",
  "Reviews",
  "Schedule",
];

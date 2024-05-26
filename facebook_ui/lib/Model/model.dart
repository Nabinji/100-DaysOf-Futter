class FacebookUser {
  String name;
  String image;
  String status;
  String profileImage;
  bool isOnline;
  String like;
  String comment;
  String storyImage;
  String time;

  FacebookUser({
    required this.name,
    required this.comment,
    required this.image,
    required this.isOnline,
    required this.like,
    required this.profileImage,
    required this.status,
    required this.storyImage,
    required this.time,
  });
}

List<FacebookUser> userInfo = [
  FacebookUser(
      name: "Johna Smith",
      image: "images/image1.png",
      status:
          "Roaming far and wide, chasing dreams. Each journey a tale untold, a soul enriched. #Wanderlust #Adventure",
      comment: "111",
      isOnline: true,
      like: "11K",
      time: "12 min ago",
      profileImage: "images/profile5.png",
      storyImage: "images/story1.png"),
      
  FacebookUser(
      name: "Maria Garcia",
      image: "images/image2.png",
      time: "2 h ago",
      status:"",
          //"Style is my language, expressing who I am. Confidence sewn into every stitch. #FashionForward #ExpressYourself",
      comment: "200",
      isOnline: true,
      like: "20.5K",
      profileImage: "images/profile3.png",
      storyImage: "images/image3.png"),
  FacebookUser(
      name: "Mohammad Ali",
      image: "images/image8.png",
      time: "1 day ago",
      status:
          "Exploring new horizons, discovering wonders. Memories made, hearts touched. #TravelDiaries #Discover",
      comment: "2",
      isOnline: false,
      like: "20",
      profileImage: "images/profile1.png",
      storyImage: "images/story2.png"),
  FacebookUser(
      name: "Anna Johnson",
      time: "22 hr ago",
      image: "",
      status:
          "Life's a game; play it well. Laughter echoes, joy multiplies. Let's have some fun! #PlayfulSpirit #JoyfulLiving",
      comment: "20",
      isOnline: true,
      like: "2K",
      profileImage: "images/profile2.png",
      storyImage: "images/story3.png"),
  FacebookUser(
      name: "Chen Wei",
      time: "2 week ago",
      image: "images/story2.png",
      status:
          "In quiet moments, find serenity. Stillness speaks, wisdom whispers. Peace within, tranquility embraced. #InnerPeace #Mindfulness",
      comment: "1k",
      isOnline: false,
      like: "100K",
      profileImage: "images/profile4.png",
      storyImage: "images/image1.png"),
];

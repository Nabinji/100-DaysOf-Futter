class Job {
  String location;
  String role;
  String urlLogo;
  String name;
  bool isFavorite;

  Job({
    required this.role,
    required this.urlLogo,
    required this.name,
    required this.location,
    this.isFavorite = false,
  });
}
// for you

List<Job> forYou = [
  Job(
    role: 'Product Designer',
    location: 'San Francisco, CA',
    name: 'Google',
    urlLogo:
        'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
  ),
  Job(
    role: 'Frontend Web',
    location: 'Miami',
    name: 'Netflix',
    urlLogo:
        'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
  ),
  Job(
    role: 'Mobile Developer',
    location: 'New York',
    name: 'Amazon',
    urlLogo:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png',
  ),
];
// for recent 
List<Job> recent = [
  Job(
    role: 'UX Enginner',
    location: 'Mountain View, CA',
    isFavorite: true,
    name: 'Apple',
    urlLogo:
        'https://i.pinimg.com/originals/1c/aa/03/1caa032c47f63d50902b9d34492e1303.jpg',
  ),
  Job(
    role: 'Motion Designer',
    location: 'New York, NY',
    name: 'AirBnb',
    urlLogo:
        'https://static-00.iconduck.com/assets.00/airbnb-icon-951x1024-cecrwt2x.png',
    isFavorite: true,
  ),
  Job(
    role: 'Python Developer',
    location: 'New York',
    name: 'Amazon',
    urlLogo:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2048px-Amazon_icon.svg.png',
  ),

];


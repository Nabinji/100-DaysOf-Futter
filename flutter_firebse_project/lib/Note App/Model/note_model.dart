import 'dart:math';

class Note {
  String id;
  String title;
  String note;
  int color;
  final DateTime createdAt;
  final DateTime updatedAt;

  Note({
    required this.id,
    required this.title,
    required this.note,
    this.color = 0xFFFFFFFF,
    required this.createdAt,
    required this.updatedAt, // Default color: white
  });
}
// it generate the random color in our notes
int generateRandomLightColor() {
  Random random = Random();
  int red = 200 + random.nextInt(56); // 200 to 255
  int green = 200 + random.nextInt(56); // 200 to 255
  int blue = 200 + random.nextInt(56); // 200 to 255
  return (0xFF << 24) | (red << 16) | (green << 8) | blue;
}

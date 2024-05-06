import 'dart:convert';

List<CommandsModel> commandsModelFromJson(String str) =>
    List<CommandsModel>.from(
        json.decode(str).map((x) => CommandsModel.fromJson(x)));

String commandsModelToJson(List<CommandsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CommandsModel {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CommandsModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CommandsModel.fromJson(Map<String, dynamic> json) => CommandsModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}

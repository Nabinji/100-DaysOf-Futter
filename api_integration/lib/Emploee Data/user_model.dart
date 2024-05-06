// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  List<User> users;
  int total;
  int skip;
  int limit;

  UserModel({
    required this.users,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class User {
  int id;
  String firstName;
  String lastName;
  String maidenName;
  int age;
  Gender gender;
  String email;
  String phone;
  String username;
  String password;
  DateTime birthDate;
  String image;
  String bloodGroup;
  int height;
  double weight;
  EyeColor eyeColor;
  Hair hair;
  String domain;
  String ip;
  Address address;
  String macAddress;
  String university;
  Bank bank;
  Company company;
  String ein;
  String ssn;
  String userAgent;
  Crypto crypto;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hair,
    required this.domain,
    required this.ip,
    required this.address,
    required this.macAddress,
    required this.university,
    required this.bank,
    required this.company,
    required this.ein,
    required this.ssn,
    required this.userAgent,
    required this.crypto,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        maidenName: json["maidenName"],
        age: json["age"],
        gender: genderValues.map[json["gender"]]!,
        email: json["email"],
        phone: json["phone"],
        username: json["username"],
        password: json["password"],
        birthDate: DateTime.parse(json["birthDate"]),
        image: json["image"],
        bloodGroup: json["bloodGroup"],
        height: json["height"],
        weight: json["weight"]?.toDouble(),
        eyeColor: eyeColorValues.map[json["eyeColor"]]!,
        hair: Hair.fromJson(json["hair"]),
        domain: json["domain"],
        ip: json["ip"],
        address: Address.fromJson(json["address"]),
        macAddress: json["macAddress"],
        university: json["university"],
        bank: Bank.fromJson(json["bank"]),
        company: Company.fromJson(json["company"]),
        ein: json["ein"],
        ssn: json["ssn"],
        userAgent: json["userAgent"],
        crypto: Crypto.fromJson(json["crypto"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "maidenName": maidenName,
        "age": age,
        "gender": genderValues.reverse[gender],
        "email": email,
        "phone": phone,
        "username": username,
        "password": password,
        "birthDate":
            "${birthDate.year.toString().padLeft(4, '0')}-${birthDate.month.toString().padLeft(2, '0')}-${birthDate.day.toString().padLeft(2, '0')}",
        "image": image,
        "bloodGroup": bloodGroup,
        "height": height,
        "weight": weight,
        "eyeColor": eyeColorValues.reverse[eyeColor],
        "hair": hair.toJson(),
        "domain": domain,
        "ip": ip,
        "address": address.toJson(),
        "macAddress": macAddress,
        "university": university,
        "bank": bank.toJson(),
        "company": company.toJson(),
        "ein": ein,
        "ssn": ssn,
        "userAgent": userAgent,
        "crypto": crypto.toJson(),
      };
}

class Address {
  String address;
  String? city;
  Coordinates coordinates;
  String postalCode;
  String state;

  Address({
    required this.address,
    this.city,
    required this.coordinates,
    required this.postalCode,
    required this.state,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        address: json["address"],
        city: json["city"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
        postalCode: json["postalCode"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "city": city,
        "coordinates": coordinates.toJson(),
        "postalCode": postalCode,
        "state": state,
      };
}

class Coordinates {
  double lat;
  double lng;

  Coordinates({
    required this.lat,
    required this.lng,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}

class Bank {
  String cardExpire;
  String cardNumber;
  String cardType;
  String currency;
  String iban;

  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
        cardExpire: json["cardExpire"],
        cardNumber: json["cardNumber"],
        cardType: json["cardType"],
        currency: json["currency"],
        iban: json["iban"],
      );

  Map<String, dynamic> toJson() => {
        "cardExpire": cardExpire,
        "cardNumber": cardNumber,
        "cardType": cardType,
        "currency": currency,
        "iban": iban,
      };
}

class Company {
  Address address;
  String department;
  String name;
  String title;

  Company({
    required this.address,
    required this.department,
    required this.name,
    required this.title,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        address: Address.fromJson(json["address"]),
        department: json["department"],
        name: json["name"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "address": address.toJson(),
        "department": department,
        "name": name,
        "title": title,
      };
}

class Crypto {
  Coin coin;
  Wallet wallet;
  Network network;

  Crypto({
    required this.coin,
    required this.wallet,
    required this.network,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) => Crypto(
        coin: coinValues.map[json["coin"]]!,
        wallet: walletValues.map[json["wallet"]]!,
        network: networkValues.map[json["network"]]!,
      );

  Map<String, dynamic> toJson() => {
        "coin": coinValues.reverse[coin],
        "wallet": walletValues.reverse[wallet],
        "network": networkValues.reverse[network],
      };
}

enum Coin { BITCOIN }

final coinValues = EnumValues({"Bitcoin": Coin.BITCOIN});

enum Network { ETHEREUM_ERC20 }

final networkValues = EnumValues({"Ethereum (ERC20)": Network.ETHEREUM_ERC20});

enum Wallet {
  THE_0_XB9_FC1004_BFE7702_DE522516_CF34_A5_DA41_C4_EF2_B5,
  THE_0_XB9_FC2_FE63_B2_A6_C003_F1_C324_C3_BFA53259162181_A,
  THE_0_XB9_FC4_B4_B855_BC44_EB30_D5_E36_FD18_F491_F44_A15_B7,
  THE_0_XB9_FE6979_A82_FB43_FDD9_BA9_F446846_DC4_DFCA3_DEB
}

final walletValues = EnumValues({
  "0xb9fc1004bfe7702de522516cf34a5da41c4ef2b5":
      Wallet.THE_0_XB9_FC1004_BFE7702_DE522516_CF34_A5_DA41_C4_EF2_B5,
  "0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a":
      Wallet.THE_0_XB9_FC2_FE63_B2_A6_C003_F1_C324_C3_BFA53259162181_A,
  "0xb9fc4b4b855bc44eb30d5e36fd18f491f44a15b7":
      Wallet.THE_0_XB9_FC4_B4_B855_BC44_EB30_D5_E36_FD18_F491_F44_A15_B7,
  "0xb9fe6979a82fb43fdd9ba9f446846dc4dfca3deb":
      Wallet.THE_0_XB9_FE6979_A82_FB43_FDD9_BA9_F446846_DC4_DFCA3_DEB
});

enum EyeColor { AMBER, BLUE, BROWN, GRAY, GREEN }

final eyeColorValues = EnumValues({
  "Amber": EyeColor.AMBER,
  "Blue": EyeColor.BLUE,
  "Brown": EyeColor.BROWN,
  "Gray": EyeColor.GRAY,
  "Green": EyeColor.GREEN
});

enum Gender { FEMALE, MALE }

final genderValues = EnumValues({"female": Gender.FEMALE, "male": Gender.MALE});

class Hair {
  Color color;
  Type type;

  Hair({
    required this.color,
    required this.type,
  });

  factory Hair.fromJson(Map<String, dynamic> json) => Hair(
        color: colorValues.map[json["color"]]!,
        type: typeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "color": colorValues.reverse[color],
        "type": typeValues.reverse[type],
      };
}

enum Color { AUBURN, BLACK, BLOND, BROWN, CHESTNUT }

final colorValues = EnumValues({
  "Auburn": Color.AUBURN,
  "Black": Color.BLACK,
  "Blond": Color.BLOND,
  "Brown": Color.BROWN,
  "Chestnut": Color.CHESTNUT
});

enum Type { CURLY, STRAIGHT, STRANDS, VERY_CURLY, WAVY }

final typeValues = EnumValues({
  "Curly": Type.CURLY,
  "Straight": Type.STRAIGHT,
  "Strands": Type.STRANDS,
  "Very curly": Type.VERY_CURLY,
  "Wavy": Type.WAVY
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

class UploadApiImage {
  Future<dynamic> uploadImage(
    Uint8List bytes,
    String fileName
  ) async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/files/upload");
    var request = http.MultipartRequest("POST", url);
    var myFile = http.MultipartFile(
      "file",
      http.ByteStream.fromBytes(bytes),
      bytes.length,
      filename: fileName,
    );
    request.files.add(myFile);
    final respones = await request.send();
    if (respones.statusCode == 201) {
      var data = await respones.stream.bytesToString();
      return jsonDecode(data);
    } else {
      return null;
    }
  }
}

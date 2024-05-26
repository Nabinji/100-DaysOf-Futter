// ignore_for_file: avoid_print

import 'dart:typed_data';

import 'package:api_integration/Upload%20Image/services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  String isImageUploade = "";
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isImageUploade == ""
                      ? const SizedBox()
                      : SizedBox(
                          height: 350,
                          width: 350,
                          child: Image.network(
                            isImageUploade,
                          ),
                        ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    onPressed: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image =
                          await picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        setState(() {
                          isLoading = true;
                        });
                        // it takes some time to uploade images
                        Uint8List bytes = await image.readAsBytes();
                        UploadApiImage()
                            .uploadImage(bytes, image.name)
                            .then((value) {
                          setState(() {
                            isImageUploade = value['location'].toString();
                            isLoading =false;
                          });
                          print(
                              "Updated Successfully with link ${value.toString()}");
                        }).onError((error, stackTrace) {
                          setState(() {
                            isLoading = true;
                          });
                          print(error.toString());
                        });
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Upload Image",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

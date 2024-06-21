import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class PickFileFromFirebase extends StatefulWidget {
  const PickFileFromFirebase({super.key});

  @override
  _PickFileFromFirebaseState createState() => _PickFileFromFirebaseState();
}

class _PickFileFromFirebaseState extends State<PickFileFromFirebase> {
  File? file;
  String? url;
  bool isPdf = false;
  var name;
  // we have also set to circular progress indicator during waiting time
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    loadFileUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              height: 60,
              color: Colors.blue,
              onPressed: () {
                getFile();
              },
              child: const Text(
                "Upload File",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // add this two package
            // pdf viewer for display the pdf file in our app
            //url launcer is usedr for , if we upload the file link then we have open this from the link as well
            isLoading
                ? CircularProgressIndicator()
                : url != null && isPdf
                    ? Expanded(
                        child: PDFView(
                        filePath: file?.path,
                        onRender: (_) => setState(() {}),
                      ))
                    : url != null
                        ? InkWell(
                            onTap: () async {
                              if (await canLaunch(url!)) {
                                await launch(url!);
                              } else {
                                Fluttertoast.showToast(
                                  msg: "Could not open the file",
                                  textColor: Colors.red,
                                );
                              }
                            },
                          )
                        : Container(),
          ],
        ),
      ),
    );
  }

  // pick the file
  getFile() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf', 'doc']);
    if (result != null) {
      File c = File(result.files.single.path.toString());
      setState(() {
        file = c;
        name = result.names.toString();
        isPdf = result.files.single.extension == 'pdf';
        url = null;
        isLoading = true;
      });
      uploadFile();
    }
  }

  // for upload the file
  uploadFile() async {
    try {
      // file is store inside the Users folder in firebase storage
      var myFile =
          FirebaseStorage.instance.ref().child("Users").child('/$name');
      UploadTask task = myFile.putFile(file!);
      TaskSnapshot snapshot = await task;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      // save the url and file path to firestore
      FirebaseFirestore.instance.collection("users").doc("latestFile").set({
        "url": downloadUrl,
        'filePath': file!.path,
        'isPdf': isPdf,
      });
      setState(() {
        url = downloadUrl;
        isLoading = false;
      });
      print(url);
      if (url != null && file != null) {
        // for showing snackbar
        Fluttertoast.showToast(
          msg: "Uploaded Successfulley",
          textColor: Colors.white,
          backgroundColor: Colors.green,
        );
      } else {
        Fluttertoast.showToast(
          msg: "Something went wrong",
          textColor: Colors.red,
          backgroundColor: Colors.green,
        );
      }
    } on Exception catch (e) {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(
        msg: e.toString(),
        textColor: Colors.red,
        backgroundColor: Colors.green,
      );
    }
  }

  void loadFileUrl() async {
    // load the url and file path from firestore
    try {
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('users')
          .doc('latestFile')
          .get();
      if (doc.exists) {
        setState(() {
          url = doc['url'];
          file = File(doc['filePath']);
          isPdf = doc['isPdf'];
        });
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Error $e",
        textColor: Colors.red,
      );
    }
  }
}


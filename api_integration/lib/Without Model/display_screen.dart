import 'package:api_integration/Without%20Model/services.dart';
import 'package:flutter/material.dart';

class GetMethodWithoutModel extends StatefulWidget {
  const GetMethodWithoutModel({super.key});

  @override
  State<GetMethodWithoutModel> createState() => _GetMethodWithoutModelState();
}

class _GetMethodWithoutModelState extends State<GetMethodWithoutModel> {
  dynamic postModelData = [];
  bool isLoadin = false;
  getPost() {
    isLoadin = true;
    ApiService().getRequestWithoutModel().then((value) {
      setState(() {
        postModelData = value;
        isLoadin = false;
      });
    }).onError((error, stackTrace) {
      // ignore: avoid_print
      print(error);
    });
  }

  @override
  void initState() {
    getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Method Without Model"),
      ),
      body: isLoadin
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: postModelData.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 2,borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          userInfo(index, "Name : ",
                              postModelData[index]["name"].toString()),
                                     userInfo(index, "Email : ",
                              postModelData[index]["email"].toString()),
                                     userInfo(index, "City : ",
                              postModelData[index]["address"]["city"].toString()),
                                     userInfo(index, "Street : ",
                              postModelData[index]["address"]["street"].toString()),
                               userInfo(index, "Phone : ",
                              postModelData[index]["phone"].toString()),
                               userInfo(index, "Website : ",
                              postModelData[index]["website"].toString()),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }

  Row userInfo(int index, name, value) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          value,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class LocationAutoComplete extends StatefulWidget {
  const LocationAutoComplete({super.key});

  @override
  LocationAutoCompleteState createState() => LocationAutoCompleteState();
}

class LocationAutoCompleteState extends State<LocationAutoComplete> {
  final searchController = TextEditingController();
  final String token = '1234567890';
  var uuid = const Uuid();
  List<dynamic> listOfLocation = [];
  @override
  void initState() {
     super.initState();
    searchController.addListener(() {
      _onChange();
    });
   
  }

  _onChange() {
    placeSuggestion(searchController.text);
  }

  void placeSuggestion(String input) async {
    const String apiKey = "AIzaSyDQ2c_pOSOFYSjxGMwkFvCVWKjYOM9siow";
    try {
      String bassedUrl =
          "https://maps.googleapis.com/maps/api/place/autocomplete/json";
      String request =
           '$bassedUrl?input=$input&key=$apiKey&sessiontoken=$token';
      var response = await http.get(Uri.parse(request));
      var data = json.decode(response.body);
      if (kDebugMode) {
        print(data);
      }
      if (response.statusCode == 200) {
        setState(() {
          listOfLocation = json.decode(response.body)['predictions'];
        });
      } else {}
      throw Exception("Fail to load");
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Location AutoComplete",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: "Search place...",
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
            Visibility(
              visible: searchController.text.isEmpty ? false : true,
              child: Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listOfLocation.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {},
                        child: ListTile(
                           title:  Text(
                            listOfLocation[index]["description"],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Visibility(
              visible: searchController.text.isEmpty ? true : false,
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.my_location,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "My Location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      )
                    ],
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

import 'package:api_integration/Update/model.dart';
import 'package:api_integration/Update/services.dart';
import 'package:api_integration/Update/update_display.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  UpdateModel updateData = UpdateModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(hintText: "Name"),
            ),
            TextField(
              controller: jobController,
              decoration: const InputDecoration(hintText: "Job"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[200],
              ),
              onPressed: () {
                MyApiServices()
                    .updateData(nameController.text.toString(),
                        jobController.text.toString())
                    .then((value) {
                  setState(() {
                    updateData = value!;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdateDisplay(
                          updateModel: updateData,
                          name: updateData.name.toString(),
                          job: updateData.job.toString(),
                          updatedAT: updateData.updatedAt.toString(),
                        ),
                      ),
                    );
                  });
                });
              },
              child: const Text(
                "Update",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

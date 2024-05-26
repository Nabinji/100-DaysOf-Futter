import 'package:api_integration/Update/model.dart';
import 'package:flutter/material.dart';

class UpdateDisplay extends StatelessWidget {
  final String? name, job, updatedAT;
  final UpdateModel updateModel;
  const UpdateDisplay({
    super.key,
    this.name,
    this.job,
    this.updatedAT,
    required this.updateModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update API"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : $name"),
             Text("Name : $job"),
              Text("Name : $updatedAT"),
          ],
        ),
      ),
    );
  }
}

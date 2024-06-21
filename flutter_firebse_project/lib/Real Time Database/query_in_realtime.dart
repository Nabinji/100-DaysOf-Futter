import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class RealTimeDatabaseQueary extends StatefulWidget {
  const RealTimeDatabaseQueary({super.key});

  @override
  State<RealTimeDatabaseQueary> createState() => _RealTimeDatabaseState();
}

final databaseReference = FirebaseDatabase.instance.ref("ReaalTimeQueary");

class _RealTimeDatabaseState extends State<RealTimeDatabaseQueary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Realtime Database CRUD"),
      ),
      // For Read/Display Operaion
      body: Column(
        children: [
          Expanded(
            child: FirebaseAnimatedList(
              query: databaseReference,
              itemBuilder: (context, snapshot, index, animation) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(
                      snapshot.child("name").value.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      snapshot.child("country").value.toString(),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue[100],
                      child: Text(
                        snapshot.child("age").value.toString(),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

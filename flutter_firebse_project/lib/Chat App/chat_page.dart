import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/Chat%20App/login.dart';

import 'message.dart';

class ChatPage extends StatefulWidget {
  final String email;
  const ChatPage({super.key, required this.email});

  @override
  _ChatPageState createState() => _ChatPageState(email: email);
}

class _ChatPageState extends State<ChatPage> {
  final String email;
  _ChatPageState({required this.email});

  final FirebaseFirestore fs = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        actions: [
          MaterialButton(
            onPressed: () {
              _auth.signOut().whenComplete(() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeeScreen(),
                  ),
                );
              });
            },
            child: Text("Sign Out"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.79,
              child: MessageScreen(email: email),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: messageController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.purple[100],
                      hintText: 'Message',
                      enabled: true,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {},
                    onSaved: (value) {
                      messageController.text = value!;
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (messageController.text.isNotEmpty) {
                      fs.collection('Messages').doc().set({
                        'message': messageController.text.trim(),
                        'time': DateTime.now(),
                        'email': email,
                      });

                      messageController.clear();
                    }
                  },
                  icon: Icon(Icons.send_sharp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

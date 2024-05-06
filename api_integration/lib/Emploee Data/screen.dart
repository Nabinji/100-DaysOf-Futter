import 'package:api_integration/Emploee%20Data/services.dart';
import 'package:api_integration/Emploee%20Data/user_detail.dart';
import 'package:api_integration/Emploee%20Data/user_model.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  List<User> userModel = [];
  bool isLoading = false;
  myUsers() {
    isLoading = true;
    userItems().then((value) {
      setState(() {
        userModel = value;
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    myUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Biodata From API"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: userModel.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final users = userModel[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDetail(user: users),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.blue[100],
                                  backgroundImage: NetworkImage(
                                    users.image,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(text: "${users.firstName} "),
                                          TextSpan(text: users.lastName),
                                        ],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Text(users.company.department),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

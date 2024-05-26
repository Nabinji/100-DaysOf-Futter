import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveLoginScreen extends StatefulWidget {
  const RiveLoginScreen({super.key});

  @override
  State<RiveLoginScreen> createState() => _RiveLoginScreenState();
}

class _RiveLoginScreenState extends State<RiveLoginScreen> {
  // for controller
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SMIInput<bool>? isChecking;
  SMIInput<bool>? isHandsUp;
  SMIInput<bool>? trigSuccess;
  SMIInput<bool>? trigFail;
  SMINumber? numLook;

  late StateMachineController? stateMachineController;
  void isCheckField() {
    isHandsUp?.change(false);
    isChecking?.change(true);
    numLook?.change(0);
  }

  void moveEyeBall(val) {
    numLook?.change(val.length.toDouble());
  }

  void hidePassword() {
    isHandsUp?.change(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: RiveAnimation.asset(
                "images/animated_login_character.riv",
                stateMachines: const ["Login Machine"],
                onInit: (artBoard) {
                  stateMachineController = StateMachineController.fromArtboard(
                      artBoard,
                      "Login Machine" // it must me same from rive name
                      );
                  if (stateMachineController == null) return;
                  artBoard.addController(stateMachineController!);
                  isChecking = stateMachineController?.findInput("isChecking");
                  isHandsUp = stateMachineController?.findInput("isHandsUp");
                  trigSuccess =
                      stateMachineController?.findInput("trigSuccess");
                  trigFail = stateMachineController?.findInput("trigFail");
                  numLook = stateMachineController?.findSMI("numLook");
                },
              ),
            ),
            // now for ui parts(login page),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                width: 400,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 10,
                        blurRadius: 10),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // for username
                          TextFormField(
                            onChanged: moveEyeBall,
                            onTap: isCheckField,
                            controller: usernameController,
                            style: const TextStyle(fontSize: 15),
                            cursorColor: const Color.fromARGB(255, 176, 72, 99),
                            decoration: InputDecoration(
                              hintText: "Username",
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusColor:
                                  const Color.fromARGB(255, 176, 72, 99),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 176, 72, 99),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Pleaase enter the valid username";
                              }
                              return null;
                            },
                          ),
                          // eye is moving
                          const SizedBox(height: 20),
                          TextFormField(
                            onTap: hidePassword,
                            controller: passwordController,
                            obscureText: true,
                            style: const TextStyle(fontSize: 15),
                            cursorColor: const Color.fromARGB(255, 176, 72, 99),
                            decoration: InputDecoration(
                              hintText: "Password",
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusColor:
                                  const Color.fromARGB(255, 176, 72, 99),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 176, 72, 99),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Pleaase enter the valid password";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 25),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[200]),
                            child: InkWell(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  isChecking!.change(false);
                                  isHandsUp!.change(false);
                                 trigFail!.change(false);
                                  trigSuccess!.change(true); // for success
                                  isChecking!.change(false);
                                } else{ 
                                  isChecking!.change(false);
                                  isHandsUp!.change(false);
                                  trigFail!.change(true);// for unsuccess
                                  trigSuccess!.change(false); 
                                  isChecking!.change(false);
                                }
                                
                              },
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

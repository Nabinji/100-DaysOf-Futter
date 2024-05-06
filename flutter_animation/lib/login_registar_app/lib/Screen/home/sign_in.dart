import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login_registar_app/Screen/home/Utils/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isFlat = true;
  double height1 = 35;
  double height2 = 35;
  double height3 = 35;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              backgroundColor2,
              backgroundColor2,
              backgroundColor4,
            ],
          ),
        ),
        child: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: size.height * 0.03),
            FadeInUp(
              from: 200,
              child: Text(
                "Hello Again!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: textColor1,
                ),
              ),
            ),
            const SizedBox(height: 15),
            FadeInUp(
              from: 200,
              child: Text(
                "Wellcome back vou've\nbeen missed!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 27, color: textColor2, height: 1.2),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            // for username and password
            myTextField("Enter username", Colors.white),
            myTextField("Password", Colors.black26),
            const SizedBox(height: 10),
            FadeInUp(
              from: 200,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Recovery Password               ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: textColor2,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // for sign in button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFlat = !isFlat;
                      });
                    },
                    child: FadeInUp(
                      from: 200,
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  FadeInUp(
                    from: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,
                          width: size.width * 0.2,
                          color: Colors.black12,
                        ),
                        Text(
                          "  Or continue with   ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor2,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          height: 2,
                          width: size.width * 0.2,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              height1 = height1 == 60 ? 35 : 60;
                            });
                          },
                          child: socialIcon("images/google.png", height1)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              height2 = height2 == 20 ? 35 : 20;
                            });
                          },
                          child: socialIcon("images/apple.png", height2)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              height3 = height3 == 100 ? 35 : 100;
                            });
                          },
                          child: socialIcon("images/facebook.png", height3)),
                    ],
                  ),
                  SizedBox(height: size.height * 0.07),
                  Text.rich(
                    TextSpan(
                        text: "Not a member? ",
                        style: TextStyle(
                          color: textColor2,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        children: const [
                          TextSpan(
                            text: "Register now",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  FadeInUp socialIcon(image, iconHeight) {
    return FadeInUp(
      from: 400,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Image.asset(
          image,
          height: iconHeight,
        ),
      ),
    );
  }

  // first we add animation on text field
  FadeInUp myTextField(String hint, Color color) {
    return FadeInUp(
      from: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        child: AnimatedPhysicalModel(
          shape: BoxShape.rectangle,
          elevation: isFlat ? 0 : 5,
          color: backgroundColor2,
          shadowColor: Colors.black,
          duration: const Duration(microseconds: 300),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 22,
              ),
              fillColor: Colors.white,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: hint,
              hintStyle: const TextStyle(
                color: Colors.black45,
                fontSize: 19,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

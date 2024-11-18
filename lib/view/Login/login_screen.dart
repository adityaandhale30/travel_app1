

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/Login/firebase_methods.dart';
import 'package:travel_app/view/Home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;
  bool togglePassword = false;

  bool checkpassword() {
    if (togglePassword == true) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: isLoading
          ? Center(
              child: SizedBox(
                height: size.height / 20,
                width: size.height / 20,
                child: const CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 20,
                  ),

                  const SizedBox(
                    height: 120,
                  ),
                  const Center(
                      child: Text(
                    "Sign in now",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                      height: 30,
                      child: Text(
                        "Please sign in to continue our app",
                        style: TextStyle(
                            color: Color.fromRGBO(125, 132, 141, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: userNameField(
                      "Email",
                      _email,
                    ),
                  ),
                  Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: passWordfield(" Password", _password),
                  ),
                  //const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  customButton(size),

                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    // onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (_) => const CreateAccount())),
                    child: const Text(
                      "Don’t have an account? Sign up.",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset("assets/images/Group 335.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      // Image.asset("assets/images/Group 333.png"),
                      // const SizedBox(
                      //   width: 20,
                      // ),
                      // Image.asset("assets/images/Group 334.png"),
                    ],
                  )
                ],
              ),
            ),
    );
  }

  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () {
        if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
          setState(() {
            isLoading = true;
          });

          logIn(_email.text, _password.text).then((user) {
            if (user != null) {
              print("Login Sucessfull");
              setState(() {
                isLoading = false;
              });
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => const HomeScreen()));
            } else {
              print("Login Failed");
              setState(() {
                isLoading = false;
              });
            }
          });
        } else {
          print("Please fill form correctly");
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromRGBO(55, 151, 239, 1),
          ),
          alignment: Alignment.center,
          child: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget userNameField(String hintText, TextEditingController cont) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: cont,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: const Color.fromRGBO(250, 250, 250, 1),
          hintStyle: GoogleFonts.roboto(
            color: const Color.fromRGBO(0, 0, 0, 0.4),
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              width: 0.5,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }

  void togglePasswordfun() {
    if (togglePassword) {
      togglePassword = false;
    } else {
      togglePassword = true;
    }
    setState(() {});
  }

  Widget passWordfield(String hintText, TextEditingController cont) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: cont,
        obscureText: checkpassword(),
        obscuringCharacter: '*',
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: const Color.fromRGBO(250, 250, 250, 1),
          suffixIcon: IconButton(
            onPressed: () {
              togglePasswordfun();
            },
            icon: togglePassword
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
            color: const Color.fromRGBO(0, 0, 0, 0.4),
          ),
          hintStyle: GoogleFonts.roboto(
            color: const Color.fromRGBO(0, 0, 0, 0.4),
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              width: 0.5,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

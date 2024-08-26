// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:travel_app/home_screen.dart';

// import 'package:travel_app/methods.dart';

// class CreateAccount extends StatefulWidget {
//   const CreateAccount({super.key});

//   @override
//   State createState() => _CreateAccountState();
// }

// class _CreateAccountState extends State<CreateAccount> {
//   final TextEditingController _name = TextEditingController();
//   final TextEditingController _email = TextEditingController();
//   final TextEditingController _password = TextEditingController();
//   bool isLoading = false;
//   bool togglePassword = false;

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: isLoading
//           ? Center(
//               child: SizedBox(
//                 height: size.height / 20,
//                 width: size.height / 20,
//                 child: const CircularProgressIndicator(),
//               ),
//             )
//           : SingleChildScrollView(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: size.height / 20,
//                   ),
//                   const SizedBox(
//                     height: 55,
//                   ),
//                   const SizedBox(height: 20),
//                   const Column(
//                     children: [
//                       Center(
//                           child: Text(
//                         "Sign up now",
//                         style: TextStyle(
//                             fontSize: 26, fontWeight: FontWeight.w600),
//                       )),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       SizedBox(
//                           height: 30,
//                           child: Text(
//                             "Please fill the details and create account",
//                             style: TextStyle(
//                                 color: Color.fromRGBO(125, 132, 141, 1),
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w400),
//                           )),
//                       SizedBox(
//                         height: 30,
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: Container(
//                       width: size.width,
//                       alignment: Alignment.center,
//                       child: field("Name", _name),
//                     ),
//                   ),
//                   Container(
//                     width: size.width,
//                     alignment: Alignment.center,
//                     child: field("Email", _email),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5.0),
//                     child: Container(
//                       width: size.width,
//                       alignment: Alignment.center,
//                       child: passwordfield1(
//                         "Password",
//                         _password,
//                       ),
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 17),
//                     child: Row(
//                       children: [
//                         Text(
//                           "Password must be 8 character",
//                           style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                               color: Color.fromRGBO(125, 132, 141, 1)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   customButton(size),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                     child: Text(
//                       "or connect",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                           color: Color.fromRGBO(125, 132, 141, 1)),
//                     ),
//                   ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(8.0),
//                   //   child: GestureDetector(
//                   //     onTap: () => Navigator.pop(context),
//                   //     child: const Text(
//                   //       "have an account? Login.",
//                   //       style: TextStyle(
//                   //         color: Colors.blue,
//                   //         fontSize: 16,
//                   //         fontWeight: FontWeight.w500,
//                   //       ),
//                   //     ),
//                   //   ),
//                   // )
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Image.asset("assets/images/Group 332.png"),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Image.asset("assets/images/Group 333.png"),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Image.asset("assets/images/Group 334.png"),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//     );
//   }

//   Widget customButton(Size size) {
//     return GestureDetector(
//       onTap: () {
//         if (_name.text.isNotEmpty &&
//             _email.text.isNotEmpty &&
//             _password.text.isNotEmpty) {
//           setState(() {
//             isLoading = true;
//           });

//           createAccount(_name.text, _email.text, _password.text).then((user) {
//             if (user != null) {
//               setState(() {
//                 isLoading = false;
//               });
//               Navigator.pushReplacement(context,
//                   MaterialPageRoute(builder: (_) => const HomeScreen()));
//               log('login success');
//               print("Account Created Sucessfull");
//             } else {
//               log('login failed');
//               print("Login Failed");
//               setState(() {
//                 isLoading = false;
//               });
//             }
//           });
//         } else {
//           print("Please enter Fields");
//         }
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Container(
//             height: 50,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: const Color.fromRGBO(55, 151, 239, 1),
//             ),
//             alignment: Alignment.center,
//             child: Text(
//               "Sign up",
//               style: GoogleFonts.roboto(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             )),
//       ),
//     );
//   }

//   Widget field(String hintText, TextEditingController cont) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: TextField(
//         controller: cont,
//         keyboardType: TextInputType.emailAddress,
//         decoration: InputDecoration(
//           hintText: hintText,
//           filled: true,
//           fillColor: const Color.fromRGBO(250, 250, 250, 1),
//           hintStyle: GoogleFonts.roboto(
//             color: const Color.fromRGBO(0, 0, 0, 0.2),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               10,
//             ),
//             borderSide: const BorderSide(
//               width: 0.5,
//               color: Color.fromRGBO(0, 0, 0, 0.3),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               10,
//             ),
//             borderSide: const BorderSide(
//               width: 0.5,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void togglePasswordfun() {
//     if (togglePassword) {
//       togglePassword = false;
//     } else {
//       togglePassword = true;
//     }
//     setState(() {});
//   }

//   bool checkpassword() {
//     if (togglePassword == true) {
//       return false;
//     } else {
//       return true;
//     }
//   }

//   Widget passwordfield1(String hintText, TextEditingController cont) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: TextField(
//         controller: cont,
//         obscureText: checkpassword(),
//         obscuringCharacter: "*",
//         keyboardType: TextInputType.emailAddress,
//         decoration: InputDecoration(
//           hintText: hintText,
//           filled: true,
//           fillColor: const Color.fromRGBO(250, 250, 250, 1),
//           hintStyle: GoogleFonts.roboto(
//             color: const Color.fromRGBO(0, 0, 0, 0.2),
//           ),
//           suffixIcon: IconButton(
//             onPressed: () {
//               togglePasswordfun();
//             },
//             icon: togglePassword
//                 ? const Icon(Icons.visibility)
//                 : const Icon(Icons.visibility_off),
//             color: const Color.fromRGBO(0, 0, 0, 0.4),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               10,
//             ),
//             borderSide: const BorderSide(
//               width: 0.5,
//               color: Color.fromRGBO(0, 0, 0, 0.3),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               10,
//             ),
//             borderSide: const BorderSide(
//               width: 0.5,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/Login/firebase_methods.dart';
import 'package:travel_app/view/home.dart';



class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;
  bool togglePassword = false;

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
                    height: 55,
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    children: [
                      Center(
                          child: Text(
                        "Sign up now",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w600),
                      )),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          height: 30,
                          child: Text(
                            "Please fill the details and create account",
                            style: TextStyle(
                                color: Color.fromRGBO(125, 132, 141, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      width: size.width,
                      alignment: Alignment.center,
                      child: field("Name", _name),
                    ),
                  ),
                  Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: field("Email", _email),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      width: size.width,
                      alignment: Alignment.center,
                      child: passwordfield1(
                        "Password",
                        _password,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Text(
                          "Password must be 8 character",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(125, 132, 141, 1)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  customButton(size),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                    child: Text(
                      "or connect",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(125, 132, 141, 1)),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Group 332.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset("assets/images/Group 333.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset("assets/images/Group 334.png"),
                    ],
                  )
                ],
              ),
            ),
    );
  }

  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () async {
        if (_name.text.isNotEmpty &&
            _email.text.isNotEmpty &&
            _password.text.isNotEmpty) {
          setState(() {
            isLoading = true;
          });

          try {
            final user = await createAccount(_name.text, _email.text, _password.text);
            if (user != null) {
              setState(() {
                isLoading = false;
              });
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const Home()));
              log('Account created successfully');
            } else {
              log('Account creation failed');
              showErrorDialog(context, "Account creation failed. Please try again.");
              setState(() {
                isLoading = false;
              });
            }
          } catch (e) {
            log('Error: $e');
            showErrorDialog(context, "An error occurred. Please try again.");
            setState(() {
              isLoading = false;
            });
          }
        } else {
          showErrorDialog(context, "Please fill in all fields.");
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
            child: Text(
              "Sign up",
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }

  Widget field(String hintText, TextEditingController cont) {
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
            color: const Color.fromRGBO(0, 0, 0, 0.2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              width: 0.5,
              color: Color.fromRGBO(0, 0, 0, 0.3),
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
    togglePassword = !togglePassword;
    setState(() {});
  }

  bool checkpassword() {
    return !togglePassword;
  }

  Widget passwordfield1(String hintText, TextEditingController cont) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: cont,
        obscureText: checkpassword(),
        obscuringCharacter: "*",
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: const Color.fromRGBO(250, 250, 250, 1),
          hintStyle: GoogleFonts.roboto(
            color: const Color.fromRGBO(0, 0, 0, 0.2),
          ),
          suffixIcon: IconButton(
            onPressed: togglePasswordfun,
            icon: togglePassword
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
            color: const Color.fromRGBO(0, 0, 0, 0.4),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              width: 0.5,
              color: Color.fromRGBO(0, 0, 0, 0.3),
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

  void showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Error"),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: const Text("Okay"),
          ),
        ],
      ),
    );
  }
}


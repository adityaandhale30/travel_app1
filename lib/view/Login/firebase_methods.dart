
// ignore_for_file: avoid_print

// }
import 'package:firebase_auth/firebase_auth.dart';

Future<User?> createAccount(String name, String email, String password) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    User? user = userCredential.user;
    await user?.updateProfile(displayName: name);
    await user?.reload();
    user = auth.currentUser;

    return user;
  } catch (e) {
    print("Error creating account: $e");
    return null;
  }
}

Future<User?> logIn(String email, String password) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return userCredential.user;
  } catch (e) {
    print("Error logging in: $e");
    return null;
  }
}

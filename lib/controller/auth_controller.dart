import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:getx/view/login_page.dart';
import 'package:getx/view/welcome_page.dart';

class AuthController extends GetxController {
  static AuthController authController = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const LoginPage());
    } else {
      Get.offAll(() =>  WelcomePage(email: user.email,));
    }
  }

  void register(String email,String password) async {
    try {
     await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      Get.snackbar('About user', 'User message',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          titleText: const Text(
            'Account creation field',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          messageText: Text(e.toString(),
              style: const TextStyle(
                color: Colors.white,
              )));
    }
  }
  void login(String email,String password) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      Get.snackbar('About login', 'Login message',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          titleText: const Text(
            'Login field',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          messageText: Text(e.toString(),
              style: const TextStyle(
                color: Colors.white,
              )));
    }
  }
  void logOut()async{
  await  auth.signOut();
  }
}

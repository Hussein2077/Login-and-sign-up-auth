import 'package:flutter/material.dart';
import 'package:getx/controller/auth_controller.dart';
import 'package:getx/widgets/custom_botton.dart';
import 'package:getx/widgets/custom_text_feild.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    List<String> images = [
      'f.png',
      'g.png',
      't.png',
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: w,
              height: h / 3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/signup.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const [
                  SizedBox(
                    height: 150,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/profile1.png',
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                    onTap: (){

                    },
                    controller: emailController,
                    obscureText: false,
                    label: 'Email',
                    hint: 'Enter your Email',
                    suffixIcon: (Icons.email_outlined),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    obscureText: true,
                    label: 'Password',
                    hint: 'Enter your Password',
                    suffixIcon: Icons.lock_outline_rounded,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  CustomButton(
                    onTap: () {
                      AuthController.authController.register(emailController.text.trim(), passwordController.text.trim());
                    },
                    text: 'Sign Up',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text(
                      'Do you have account?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * .1,
                  ),
                  Text('Sign up using one fo the following methods',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                      )),
                  Wrap(
                      children: List.generate(3, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey.withOpacity(.2),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/${images[index]}',
                          ),
                        ),
                      ),
                    );
                  }))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/custom_botton.dart';
import 'package:getx/routes.dart';
import 'package:getx/view/signup_page.dart';

import '../widgets/custom_text_feild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();

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
                  image: AssetImage("assets/loginimg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Sign into your account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                   CustomTextFeild(
                    controller: emailController,
                    obscureText: false,
                    label: 'Email',
                    hint: 'Enter your Email',
                    suffixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 20),
                   CustomTextFeild(
  controller: passwordController,
                    obscureText: true,
                    label: 'Password',
                    hint: 'Enter your Password',
                    suffixIcon: Icons.lock_outline_rounded,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget password?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
             CustomButton(
              onTap: (){
                Get.toNamed(welcome);
              },
              text: 'Sign in',
            ),
            SizedBox(
              height: h * .09,
            ),
            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(()=>const SignUpPage()),
                        text: 'Create',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

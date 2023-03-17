import 'package:flutter/material.dart';

import 'custom_botton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'hussein@gmail.com',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                ],
              ),

            ),
            SizedBox(height: h*.2,),
            const CustomButton(
              text: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}

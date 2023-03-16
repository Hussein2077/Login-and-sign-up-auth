import 'package:flutter/material.dart';
class CustomBotton extends StatelessWidget {
  const CustomBotton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container
      (
      width: w * .6,
      height: h * .08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: AssetImage("assets/loginbtn.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          'Sign in',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white),
        ),
      ),
    );
  }
}

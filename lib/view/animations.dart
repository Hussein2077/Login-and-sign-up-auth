import 'package:flutter/material.dart';
class Animations extends StatefulWidget {
  const Animations({Key? key}) : super(key: key);

  @override
  State<Animations> createState() => _AnimationState();
}

class _AnimationState extends State<Animations> {
  Color color=Colors.red;
  double height=150;
  double width=300;
bool tap=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
            if(tap==false){
              tap=true;
              height=200;
              width=150;
              color=Colors.teal;

            }

            });
            setState(() {
              if(tap){tap=false;
              Color color=Colors.red;
              double height=150;
              double width=300;

              }
            });

          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: height,
            width: width,
            color: color,


          ),
        ),
      ),
    );
  }
}

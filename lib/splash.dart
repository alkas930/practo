import 'package:flutter/material.dart';
import 'package:practo/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(color: Color(0xff28318c)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Color(0xff24bbf2),
                          size: 20,
                        ),
                        Text(
                          "practo",
                          style: TextStyle(
                              fontSize: 50,
                              color: Color(0xfffffdff),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.circle,
                          color: Color(0xff24bbf2),
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "india's top doctors to guide you \n      to better health every day",
                      style: TextStyle(
                        // fontSize: 50,
                        color: Color(0xfffffdff),
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 400,
                    ),
                    Image.asset(
                      "assets/2701-removebg-preview.png",
                      scale: 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ISO 27001 certified online \n      healthcare platform",
                      style: TextStyle(
                        // fontSize: 50,
                        color: Color(0xfffffdff),
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

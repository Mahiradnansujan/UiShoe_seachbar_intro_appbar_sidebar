import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shoesapp/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen()));
    });

    super.initState();
  }


Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover),
          ),
          child: Center(child: Text("OXY BOOTS",style: 
          TextStyle(color: Colors.white,fontSize: 50,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline),
          ),
           ),
        ),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:project_e/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((val){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
                height: 250,
                child: Image.asset('assets/app_image.png',fit: BoxFit.cover,),
            ),
            SizedBox(height: 40,),
            Text('Welcome To Our Application',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
            SizedBox(height: 40,),
            CircularProgressIndicator(backgroundColor: Colors.white,color: Colors.orangeAccent,),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_e/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
TextEditingController username = TextEditingController();

TextEditingController password = TextEditingController();

bool passwordEye = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text('Login',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
            Spacer(),
            Container(
              width: 100,
              height: 200,
              child: Image.asset('assets/app_image.png',fit: BoxFit.cover,),
            ),
            Spacer(),
            Container(
              width: 350,
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                 prefixIcon: Icon(Icons.person),
                  labelText: 'User Name',
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius. circular(20)) ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 350,
              child: TextField(
                obscureText: !passwordEye,
                controller: password,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: IconButton(onPressed: (){
                      setState(() {
                      passwordEye = !passwordEye;
                      });
                    }, icon: passwordEye?Icon(Icons.remove_red_eye):Icon(Icons.visibility_off)),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius. circular(20)) ),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (){
                  if(username.text=='admin' && password.text=='1234'){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }
                  else{
                    username.clear();
                    password.clear();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Incorrect UserName or password...')));
                  }
                },
                child: Text('Login',style: TextStyle(color: Colors.orangeAccent,fontSize: 15),)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_e/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
    int mainIndex=0;
  @override
  Widget build(BuildContext context) {
    List<String>title = ['Welcome','Key Feature','Get Started'];
    List<String>image = ['assets/onboarding1.png','assets/onboarding2.png','assets/onboarding3.png'];
    List<String>des = ['''Your new favorite way to [solve pain point or describe benefit].
Fast. Simple. Just for you.''','Track, manage, and customize your experience with powerful tools designed to work around your lifestyle.',
      '''Create your account and start exploring what [App Name] can do for you.
Your journey starts now.
'''];
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.8,
            child: PageView.builder(
              onPageChanged: (index){
               setState(() {
                mainIndex = index;
               });
              },
                itemCount: title.length,
                itemBuilder: (context,index){
              return onboarding_widget(title[index], image[index], des[index]);
            }),
          ),
          Center(child: Container(width: 50,child: indicator(mainIndex))),
          mainIndex==2?Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Text('Go to Login.',style: TextStyle(color: Colors.orangeAccent,fontSize: 15),)),
          ):SizedBox(),
        ],
      ),
    );
  }
}
Widget onboarding_widget(String title,String image,String des){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Spacer(),
      Text(title,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
      Spacer(),
      Container(width:350,height: 220,child: Image.asset(image,fit: BoxFit.cover,)),
     SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left: 100.0,right: 100),
        child: Text(des, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      Spacer(),
    ],
  );
}

Widget indicator(int index){
  return Row(
    children: [
      Container(height: 10,width:10,decoration: BoxDecoration(color: index==0?Colors.black:index==0?Colors.black:Colors.white,borderRadius: BorderRadius.all(Radius.circular(50))),),
      Spacer(),
      Container(height: 10,width:10,decoration: BoxDecoration(color: index==1?Colors.black:Colors.white,borderRadius: BorderRadius.all(Radius.circular(50))),),
      Spacer(),
      Container(height: 10,width:10,decoration: BoxDecoration(color: index==2?Colors.black:Colors.white,borderRadius: BorderRadius.all(Radius.circular(50))),),
    ],
  );
}

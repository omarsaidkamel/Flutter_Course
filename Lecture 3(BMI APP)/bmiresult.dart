import 'package:flutter/material.dart';

class Bmiresult extends StatelessWidget {
  final double bmi;
  String firstbmi='',secondbmi='';
  Bmiresult(this.bmi,{super.key});
  @override
  Widget build(BuildContext context) {
    if(bmi<18.5){
      firstbmi = 'Under Weight';
    }
    if(bmi>18.5&&bmi<25){
      firstbmi = 'Normal weight';
    }
    if(bmi>25&&bmi<30){
      firstbmi = 'Over weight';
    }
    if(bmi>30){
      firstbmi = 'Obese';
    }
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
            child: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text('BMI CALCULATOR',style: TextStyle(color: Colors.white,fontSize: 25),),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Text('YOUR RESULT',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(15)
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(firstbmi,style: TextStyle(color: Colors.white,fontSize: 30),),
                Spacer(),
                Text('${bmi.ceilToDouble()}',style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
                Spacer(),
                Text('Completely $secondbmi',style: TextStyle(color: Colors.white,fontSize: 30),),
                Spacer(),
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 70,
              child: Text('RE-CALCULATE',style: TextStyle(color: Colors.white,fontSize: 25),),
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

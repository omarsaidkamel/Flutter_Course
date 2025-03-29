import 'package:flutter/material.dart';

import 'bmiresult.dart';
import 'dataofbmi.dart';

class bmiscreen extends StatefulWidget {
  const bmiscreen({super.key});

  @override
  State<bmiscreen> createState() => _bmiscreenState();
}
double weight = 100,age = 10;
class _bmiscreenState extends State<bmiscreen> {
  double height = 60,bmi=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0,bottom: 15),
            child: Row(
              children: [
                Spacer(),
                gender(Icons.male,'MALE'),
                Spacer(),
                gender(Icons.female,'FEMALE'),
                Spacer(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 75,left: 75),
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(15)
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Height',style: TextStyle(color: Colors.white,fontSize: 20),),
                 Text('${height.ceil()} cm',style: TextStyle(color: Colors.white,fontSize: 30),),
                 Slider(
                   max: 250,
                     min: 50,
                     value: height,
                     onChanged: (val){
                     print(val);
                     setState(() {
                       height = val;
                     });
                     },
                 ),
               ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,bottom: 15),
            child: Row(
              children: [
                Spacer(),
                Dataofbmi('WEIGHT',weight),
                Spacer(),
                Dataofbmi('AGE', age),
                Spacer(),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              bmi = weight/ ((height/100)*(height/100));
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> Bmiresult(bmi)),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 70,
              child: Text('CALCULATE',style: TextStyle(color: Colors.white,fontSize: 25),),
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



Widget gender(IconData icon,String text){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white10,
      borderRadius: BorderRadius.circular(15)
    ),
    height: 180,
    width: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: Colors.white,size: 90,),
        SizedBox(height: 10,),
        Text(text,style: TextStyle(color: Colors.white30),),
      ],
    ),
  );
}

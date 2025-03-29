import 'package:flutter/material.dart';
import 'package:untitled1/bmi_screen.dart';

class Dataofbmi extends StatefulWidget {
  final String text; double data;
   Dataofbmi(this.text,this.data,{super.key});

  @override
  State<Dataofbmi> createState() => _DataofbmiState();
}

class _DataofbmiState extends State<Dataofbmi> {
  @override
  Widget build(BuildContext context) {
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
          Text(widget.text,style: TextStyle(fontSize: 30,color: Colors.white),),
          Text('${widget.data}',style: TextStyle(fontSize: 50,color: Colors.white),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    shape: CircleBorder()
                ),
                onPressed: (){
                  setState(() {});
                  if(widget.text=='WEIGHT'){
                    weight--;
                  }
                  if(widget.text=='AGE'){
                    age--;
                  }
                  //widget.data = widget.data - 1;
                  widget.data--;
                },
                child: Icon(Icons.minimize,color: Colors.white,),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    shape: CircleBorder()
                ),
                onPressed: (){
                  if(widget.text=='WEIGHT'){
                    weight++;
                  }
                  if(widget.text=='AGE'){
                    age++;
                  }
                  setState(() {});
                  widget.data = widget.data + 1;
                },
                child: Icon(Icons.add,color: Colors.white,),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

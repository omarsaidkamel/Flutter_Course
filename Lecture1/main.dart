import 'package:flutter/material.dart';
List<String> names = ['omar','samy','ahmed'];
List<String> code = ['3131','4356','7664543'];
List<String> time = ['12:03','05:06','05:09'];
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount:names.length,
          itemBuilder: (context,index){
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/asd.jpg'),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Name: ${names[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          SizedBox(height: 15,),
                          Text('Code: ${code[index]}'),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.done_all),
                      Text('${time[index]}'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
            ],
          );
        },
        ),
        appBar: AppBar(
          //toolbarHeight: 100,
          leading: Icon(Icons.list,color: Colors.white,size: 40,),
          title: Text('Your app',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.deepPurple,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
    )
  );
}

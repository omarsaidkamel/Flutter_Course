import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> images = ['assets/image.jpg','assets/image.jpg','assets/image.jpg','assets/image.jpg','assets/image.jpg'];
List<String> firstname = ['omar','ahmed','samy','said','gamel'];
List<String> describtion = ['assets/image.jpg','assets/image.jpg','assets/image.jpg','assets/image.jpg','assets/image.jpg'];
List<String> time = ['10:10','02:06','15:09','01:02','11:03'];

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: images.length,
            itemBuilder: (context,index){
              return Container(
                  height: 120,
                  padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(images[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0,bottom: 10),
                              child: Text(firstname[index],style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Text(describtion[index],style: TextStyle(fontSize: 13),),
                          ],
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border_outlined),
                            SizedBox(width: 15,),
                            Text(time[index]),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
            }
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.purple,
          child: Icon(Icons.add,color: Colors.white,size: 35,),
        ),
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
         // centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
              'Your App',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

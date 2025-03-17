import 'package:flutter/material.dart';

Widget drawer(){
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(20),
        color: Colors.purple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/asd.jpg'),
            ),
            SizedBox(height: 10,),
            Text('Emma',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
            Row(
              children: [
                Text('+1 (598) 503-5028',style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 20,),
      drawerlist('New group', Icons.group),
      drawerlist('Contacts', Icons.person),
      drawerlist('Calls', Icons.phone),
      drawerlist('Saved messages', Icons.bookmark),
      drawerlist('Settings', Icons.settings),
      Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey,
      ),
      drawerlist('New group', Icons.person_add_alt),
      drawerlist('New group', Icons.help_outline),

    ],
  );
}

Widget drawerlist(String text,IconData icon){
  return Padding(
    padding: EdgeInsets.all(15),
    child: Row(
      children: [
        Icon(icon),
        SizedBox(width: 15,),
        Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    ),
  );
}

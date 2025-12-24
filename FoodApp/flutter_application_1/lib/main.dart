import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Menu",style: TextStyle(color: Colors.brown , fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orangeAccent,
        centerTitle: false,
      ),
      body: 
      ListView(
        children: [
          //con1
          Container(
        
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,5 ),
          ),
          ],
        ),
        
        child: Column(
          //mainAxisAlignment
          //CrossAxisAlignment
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chicken Biriyanii", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Deliciousi"),
            Text("24.54",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            
          ],

        ),
      ),
      //con2
      Container(
        
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,5),
          ),
          ],
        ),
        
        child: Column(
          //mainAxisAlignment
          //CrossAxisAlignment
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text("Chicken Biriyanii", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,wordSpacing: 4),),
            Text("Deliciousi"),
            Text("24.54",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            
          ],

        ),
      ),
      //con3
      Container(
        
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,5 ),
          ),
          ],
        ),
        
        child: Column(
          //mainAxisAlignment
          //CrossAxisAlignment
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chicken Biriyanii", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Deliciousi"),
            Text("24.54",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            
          ],

        ),
      ),
      //con4
      Container(
        
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,5 ),
          ),
          ],
        ),
        
        child: Column(
          //mainAxisAlignment
          //CrossAxisAlignment
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chicken Biriyanii", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Deliciousi"),
            Text("24.54",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            
          ],

        ),
      ),
       //con5
      Container(
        
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,5),
          ),
          ],
        ),
        
        child: Column(
          //mainAxisAlignment
          //CrossAxisAlignment
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chicken Biriyanii", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Deliciousi"),
            Text("24.54",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            
          ],

        ),
      ),
       //con6
      Container(
        
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [ BoxShadow(
            color: Colors.black54,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,5),
          ),
          ],
        ),
        
        child: Column(
          //mainAxisAlignment
          //CrossAxisAlignment
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chicken Biriyanii", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Deliciousi"),
            Text("24.54",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            
          ],

        ),
      ),
        ],
      )
    ),
  ));
}
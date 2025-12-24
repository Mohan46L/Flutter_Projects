import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // const MainApp({super.key});
  String displaytext = "No text data";
  //Creating the textediting controller it allows the text from the textfield to the variable 
  //displaytext  
  TextEditingController textController = TextEditingController();
  List<String> Task = [" Task 01","Task 02 "];
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TODO LIST"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Row(
              children: [Expanded(child:
              Container(
              padding: EdgeInsets.all(10),
              
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter a task here "),
                  
                ),
              ),
            ),
              ),
                
            MaterialButton(
              color: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
              child: Text("Add"),
              onPressed: () {
                setState(() {
                  // Task.add(index);
                  Task.add(textController.text);
                  textController.clear();
                });

              },
            
            ),
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: Task.length,
                itemBuilder: (context,index){
                  return Row(
                    children: [
                      Expanded(child: Container(
                        padding: EdgeInsets.all(20),
                      //we gave here the task list to listing the tasks from the textfield 
                        child: Text(Task[index]),
                      )),
                      MaterialButton(
                        child: Icon(Icons.delete,color: Colors.red,),
                        height: 50,
                        
                        onPressed: (){
                          setState(() {
                            //To remove the task we use removeat func 
                            Task.removeAt(index);
                            
                          });
              
                        },
              
                      ),
                    ],
                  );
              
                  
              
              }),
            )
           
          ],
        )
      ),
    );
  }
}

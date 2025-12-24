import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MainPage(),
  ));
}
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            height: MediaQuery.of(context).size.height/2,
            width: double.infinity,
            child: Center(
              child: MaterialButton(
                shape: CircleBorder(),
                height: 100,
                minWidth: 100,
                color: Colors.white,
                child: Text("Start",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w200,fontSize: 18),),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ,GamePage())),
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GamePage()));
                },

              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            height: MediaQuery.of(context).size.height/2,
            width: double.infinity,
            child: Center(
              child: MaterialButton(
                shape: CircleBorder(),
                height: 100,
                minWidth: 100,
                color: Colors.white,
                child: Text("Start",style: TextStyle(color: Colors.redAccent,fontSize: 18,fontWeight: FontWeight.w200),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GamePage()));
                },

              ),
            ),
          ),


        ],
      ),
      
    );
    
  }
}
class GamePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GamePageState();

  }
}
class GamePageState extends State<GamePage>{
  double redCardHeight = 0;
  double blueCardHeight = 0;
  //declaring a boolean var here for the page to set the half size screen values for both containers 
  bool initialized = false;
  //Score value for both players
  int playerAScore = 0;
  int playerBScore = 0;
  
  @override
  Widget build(BuildContext context) {
    
    //writing logic here for the first time the build method is called only
    if(initialized == false){
    redCardHeight= MediaQuery.of(context).size.height/2;
    blueCardHeight= MediaQuery.of(context).size.height/2;
    initialized = true;
  }
   return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              double screenHeight = MediaQuery.of(context).size.height;
              double winningHeight = screenHeight - 60;
             
              //when we use useState the UI will get re rendered from the build method
              setState(() {
                blueCardHeight = blueCardHeight + 30;
                redCardHeight = redCardHeight - 30;
                playerBScore = playerBScore + 5;
              }); 
              if(blueCardHeight >= winningHeight){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  winnerPage(playerBScore,"Player B Wins")));
              }
            },
            child: Container(
              color: Colors.blueAccent,
              height: blueCardHeight,
              width: double.infinity,
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Expanded(
                    
                    child: Text("PLAYER B",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                  Text(playerBScore.toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                ],),
              ),
            ),
          ),
           MaterialButton(
            onPressed: () {
              double screenHeight = MediaQuery.of(context).size.height;
              double winningHeight = screenHeight - 60;
              setState(() {
                redCardHeight = redCardHeight + 30;
                blueCardHeight = blueCardHeight - 30;
                playerAScore = playerAScore + 5;

              });
              if(redCardHeight >= winningHeight){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> winnerPage(playerAScore,"Player A Wins")));
              }
              
              
            },
            padding: EdgeInsets.zero,
             child: Container(
              alignment: Alignment.bottomLeft,
              color: Colors.redAccent,
              height: redCardHeight,
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                  Expanded(
                    child: Text("PLAYER A",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                  Text(playerAScore.toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                ],),
              ),
                       ),
           )
        ],
      )


   );
  }
}
class winnerPage extends StatelessWidget{
  int score = 0;
  String player = "";
  //Inorder to store or get the score value and player details from the previous page 
  //we need to get those values through the constructor
  winnerPage(this.score,this.player);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Inorder to change the background color according to the player who wins we can use ternary operator
      backgroundColor: player == "Player A wins" ? Colors.redAccent : Colors.blueAccent,
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(score.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),)
,            Text(player,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            MaterialButton(
              child: Text("Restart"),
              color: Colors.white,
              shape: RoundedRectangleBorder(),
              onPressed: () {
                //For removing the last two pages from the stack and going back to main page
               Navigator.pop(context);
               Navigator.pop(context);

              },
            )
          ],
        )
      ),
    );
  }
}
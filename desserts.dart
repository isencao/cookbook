import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wearetrying/recipes/desserts/baklava.dart';
import 'package:wearetrying/recipes/desserts/chefsdesserts.dart';
import 'package:wearetrying/recipes/desserts/gullac.dart';
import 'package:wearetrying/recipes/desserts/macarons.dart';
import 'package:wearetrying/recipes/desserts/sekerpare.dart';
import 'package:wearetrying/recipes/desserts/souffle.dart';


class MyDesserts extends StatelessWidget {
  MyDesserts({super.key});

  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 206, 175, 223),
        centerTitle:true ,
        title: Text(
          "CookBook",
          style: TextStyle(
              color: Color.fromARGB(255, 4, 4, 4),
              fontWeight: FontWeight.w500
          ),
        ),
      ),

      body: Container(
        padding:EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 206, 175, 223),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child:GridView.count(
                primary: false,
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
                
                children: <Widget>[
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 206, 175, 223), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChefsDessert()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CHEF'S SPECIAL",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 21.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/cheesecake.png'),
                        width: 180.0,
                        
                      ),
                    ],
                  ),
                ),


                  
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 206, 175, 223), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Baklava()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "BAKLAVA",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/baklava.png'),
                        width: 180.0,
                      ),
                    ],
                  ),
                ),

                ],
              ),
            ),
            Expanded(
              flex: 1,
              child:GridView.count(
                primary: false,
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
                children: <Widget>[

                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 206, 175, 223), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gullac()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "GULLAC",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/gullac.png'),
                        width: 180.0,
                      ),
                    ],
                  ),
                ),

                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 206, 175, 223), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Macaron()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "MACARONS",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/makaron.png'),
                        width: 180.0,
                      ),
                    ],
                  ),
                ),

                ],
              ),
            ),
            Expanded(
              flex: 1,
              child:GridView.count(
                primary: false,
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
                children: <Widget>[

                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 206, 175, 223), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Souffle()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SOUFFLE",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/suffle.png'),
                        width: 180.0,
                      ),
                    ],
                  ),
                ),

                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 206, 175, 223), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sekerpare()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SEKERPARE",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/sekerpare.png'),
                        width: 180.0,
                      ),
                    ],
                  ),
                ),

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  Expanded getExpanded(String image,String mainText,String,subText)=>Expanded(
    child:ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary:
          Color.fromARGB(255, 221, 184, 180),padding:EdgeInsets.all(0)
      ),
      onPressed: () {  },
      child:Container(
        child:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: <Widget>[
              Image.asset(
                'images/$image',
                height: 80.0,
              ),
              
              Text(
                mainText,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:20.0
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              
              Text(
                subText,
                style: TextStyle(
                    fontSize: 10.0
                ),
              ),
            ],

          ),
        ),
        margin: EdgeInsets.only(left:10.0,top:10.0,right: 10.0,bottom: 10.00),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 206, 157, 152),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(),
            ]
        ),
      ),
    ),
  );

}

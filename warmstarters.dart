import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wearetrying/recipes/warmstarters/chefswarmstarters.dart';
import 'package:wearetrying/recipes/warmstarters/iclikofte.dart';
import 'package:wearetrying/recipes/warmstarters/kalamar.dart';
import 'package:wearetrying/recipes/warmstarters/mantardolma.dart';
import 'package:wearetrying/recipes/warmstarters/pacanga.dart';
import 'package:wearetrying/recipes/warmstarters/somonrulo.dart';


class MyWarmStarters extends StatelessWidget {
  MyWarmStarters({super.key});

  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 150, 93, 67),
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
        color: Color.fromARGB(255, 150, 93, 67),
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
                      primary: Color.fromARGB(255, 150, 93, 67), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChefsWarmStarters()),
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
                        image: AssetImage('images/falafel.png'),
                        width: 180.0,
                        
                      ),
                    ],
                  ),
                ),


                  
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 150, 93, 67), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IcliKofte()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "STUFFED MEATBALLS",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/iclikofte.png'),
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
                      primary: Color.fromARGB(255, 150, 93, 67), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kalamar()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CALAMARY",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/kalamar.jpg'),
                        width: 180.0,
                      ),
                    ],
                  ),
                ),

                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 150, 93, 67), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MantarDolma()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "STUFFED MUSHROOMS",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/mantardolma.png'),
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
                      primary: Color.fromARGB(255, 150, 93, 67), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pacanga()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "PACANGA BOREGI",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/pacanga.png'),
                        width: 180.0,
                      ),
                    ],
                  ),
                ),

                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 150, 93, 67), 
                      padding: EdgeInsets.all(0)),

                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SomonRulo()),
                      );
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CHEESE SALMON ROLL",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Image(
                        image: AssetImage('images/somonrulo.png'),
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

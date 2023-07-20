import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Baklava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 195, 195),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 146, 146),
        centerTitle: true,
        title: Text(
          "CookBook",
          style: TextStyle(
            color: Color.fromARGB(255, 4, 4, 4),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
           '                BAKLAVA             ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/baklava.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Baklava Recipe\n3 eggs\n1 glass of water Milk\n1 water glass measure of oil\n1 pc baking powder\n1 tablespoon of vinegar\nhalf a teaspoon of salt\n6 cups of flour\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Baklava Recipe?\nTo prepare baklava, first pour the egg, milk, oil, vinegar, baking powder and salt into the kneading bowl and add as much flour as possible and knead until you get an average soft dough.\nDivide the dough you prepared into 30 equal parts.\nOpen these pieces one by one in the size of a plate, sprinkle starch between them and put them 10 on top of each other.\nBring each of these three pieces, which we grouped as 10, to the size of a tray with the help of a roller.\nSprinkle walnuts or hazelnuts between the doughs you rolled out with a rolling pin and place them on top of each other.\nCut it as you wish and pour half of the melted oil, making sure that it is evenly all over it.\nPut it in a preheated 160°C oven, when it slightly changes color, take it out of the oven, drizzle the remaining oil and put it in the oven again and bake until golden brown.\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Comment"),
                content: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Write your comment here",
                  ),
                  maxLines: 3,
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text("Send"),
                    onPressed: () {
                      
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text("Cancel"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.comment),
        backgroundColor: Color.fromARGB(255, 150, 146, 146)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

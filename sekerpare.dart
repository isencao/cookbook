import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Sekerpare extends StatelessWidget {
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
              Center(
                child: Image.asset(
                  'images/sekerpare.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
          '               SEKERPARE             ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Text(
'Ingredients for Sekerpare Recipe\n125 grams of room temperature margarine\n Half a cup of powdered sugar\n3 tablespoons of semolina\n1 egg\n2.5 cups of flour\n1 packet of vanilla\n1 teaspoon of baking soda\n1 teaspoon of hazelnuts\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Sekerpare Recipe?\nPut the oil and powdered sugar in the mixing bowl and mix.\nAdd the egg and mix again.\nWe break off a little bit larger than a walnut from the dough and roll them with our hands.\nPlace on a greased baking tray.\nFor sherbet, we put water and sugar in a deep pot and cook for about 10-15 minutes.\nWe add the lemon juice close to the lowering and cook for 2-3 more minutes.\nWe leave the cooked syrup to cool.\nTake the baked candy pares out of the oven, let them sit for 2 minutes, and pour the warm syrup over it with the help of a ladle.\n',
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

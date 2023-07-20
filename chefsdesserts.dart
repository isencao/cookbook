import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChefsDessert extends StatelessWidget {
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
                '          CHEFS SPECIAL             ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/cheesecake.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How to Make Lemon Cheesecake? Ingredients for the base;\n100 g oat biscuits\n50 g butter\nHalf a cup of hazelnuts\nFor the cream;\n2 packages of labneh cheese\n1 cup of granulated sugar\n1 packet of vanilla\n2 eggs\n1 pack of cream (200 ml)\n3 tablespoons of flour\n1 lemon zest\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How to Make Lemon Cheesecake?\nFor the base of the lemon cheesecake, lets first pass the biscuits and hazelnuts from the robot until they are like flour.\nTake the hazelnut biscuits in a bowl, add the melted butter on it and mix it.\nLets put baking paper on the bottom of the clamped bowl.\nLets place our biscuits that we have turned into sand on the bottom of the mold and press them with a spoon.\nLets pour our cold sauce over our dessert and let it rest for 1 night. If you dont have time, you can rest for a few hours\n',
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
        backgroundColor: Color.fromARGB(255, 150, 146, 146),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

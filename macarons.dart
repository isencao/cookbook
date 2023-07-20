import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Macaron extends StatelessWidget {
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
           '               MACARONS            ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/makaron.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Macaroni Recipe and Tips\n75 grams of egg white\n75 grams of ground almonds\n150 grams of powdered sugar\n30 grams of regular granulated sugar\n10 grams unsweetened cocoa\n1 teaspoon of salt\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              
              Text(
'How to Make Macaroni and Tips Recipe?\nFirst of all, for the cream, the liquid cream is put in a sauce pan and when it comes to the boiling point, chocolates are added into it, mixed on low heat until it melts.\nThe cream, which is liquid at first, will become very creamy in the refrigerator until you make your macarons.\nWhen foaming occurs, granulated sugar is added 5 times.\nAlmond, cocoa and half of the powdered sugar, which are passed through the robot and sieve together, are added to the meringue and mixed with delicate movements from the bottom to the top without crushing the whites.\nGanache cream is spread between them and served 1 day later.\n',
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

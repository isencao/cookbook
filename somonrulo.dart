import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SomonRulo extends StatelessWidget {
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
           '              SALMON ROLL              ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/somonrulo.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Smoked Salmon Spinach Roll Recipe\n200 grams of smoked salmon slices\n250 grams of spinach\n100 grams grated cheddar cheese\n1 package of labneh cheese\n4 eggs\nSalt, pepper, paprika\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Smoked Salmon Spinach Roll Recipe?\nLets separate the eggs first. Beat the egg whites with a pinch of salt with the help of a hand mixer. In a separate bowl, whisk together the egg yolks and the pre-chopped/pureed spinach with the spices.\nDont forget to put greaseproof paper on your tray. Bake in a 200 degree fan oven for 12-15 minutes.\n After removing it from the oven, immediately turn it onto a separate piece of greaseproof paper and slowly dissolve the greaseproof paper on the cheese side. Keep it aside to cool.\nIn the meantime, mix the labneh cheese by adding only black pepper.\n Spread the cheese all over, with the cheddar side out.\n Place smoked salmon slices on it and form a tight roll.\n Wrap in cling film and refrigerate for half an hour, then slice and serve.\n',
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

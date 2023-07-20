import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChefsWarmStarters extends StatelessWidget {
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
                  'images/falafel.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
               '          CHEFS SPECIAL              ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Text(
'Lets add the boiled chickpea, onion, garlic and parsley we bought to the Rondo. Lets run it through the rondo until all the ingredients are combined.\nLets transfer the chickpea mixture to a suitable bowl and add flour, eggs, black pepper, powdered coriander and salt and mix well with the help of a spoon.\nThen cover the mortar with cling film and let it rest in the refrigerator for 1 hour.\nAt the end of the time, lets take walnut-sized pieces from the mortar and roll them.\nfalafels in it. You can use this method to store leftover falafel, or to take it out and cook it whenever you need it.\nIt is time for the frying stage, after the outside is well fried, lets take our meatballs on a towel-paper-lined plate with the help of a colander. Falafel ready to serve\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'Chop the onion into cubes and put it in the pan with the minced meat. Drizzle olive oil over it and let it cook on medium heat.\nPuree the tomatoes in the food processor and add to the roasted ground beef. Add the tomato paste and pepper sauce.\nCook on low heat until the water evaporates. Chop the peppers into cubes and sauté them in a separate pan with a little olive oil.\nAdd to the mince. Season with salt and spices. Cook for a few minutes and remove from the stove. Heat the taco shells in the oven.\nFill them with the minced meat mixture and serve with a sprinkling of chopped parsley on top. Enjoy your meal.\n',
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


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VegetableSoups extends StatelessWidget {
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
                  'images/vegetablesoup.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
 '          VEGETABLE SOUP              ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Text(
'Ingredients for Vegetable Soup Recipe                              2 zucchini                                                                              3 carrots 3 potatoes                                                               2-3 bay leaves                                                                     2 cups of milk                                                                         2 spoonful butter \n1 tablespoon of flour\nHalf a teaspoon of oil \n2 teaspoons of salt \n1 teaspoon red chili powder \n 1 teaspoon of black pepper \n2.5 liters hot water \n1 handful of dill  ',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'Lets cut the zucchini, carrots and potatoes that we washed and peeled into cubes and put them in the pot with the bay leaves. In this recipe, if you have carved zucchini cores to make stuffed zucchini, you can also use them.Add hot water to the vegetables and let them cook until they are soft.In a separate pan, melt the butter and oil.Add flour and fry for a few minutes.At the last step, lets add milk to the soup and cook for a few more minutes.Optionally, you can add finely chopped dill after the soup is cooked.',
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

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LentilSoups extends StatelessWidget {
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
                  'images/lentil.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
  '               LENTIL SOUP              ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Text(
'Ingredients for Lentil Soup Recipe                                                                                                         2 cups red lentils                                                                1 onion                                                                    2tablespoons of flour 1 carrot                                                Half a tablespoon of pepper or tomato paste              1 teaspoon salt Half                                                              a teaspoon of black pepper                                              a teaspoon cumin (optional)                                           2 liters of hot water                                                             5 tablespoons of oil ',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'For the red lentil soup, the oil is poured into the pan and the chopped onions are roasted until they turn slightly pink.Then flour is added and frying is continued on low heat.If tomato paste is to be used, tomato paste is added, after roasting, diced carrots and thoroughly washed and drained lentils are added.Add water to it, mix it and close the lid of the pot. Our soup is cooked on medium heat until it boils, and after boiling, it is cooked on low heat, stirring occasionally, until the lentils and carrots soften.After the soup is cooked, it is well crushed with a hand blender. If you dont have a blender, you can also strain it.Add black pepper, salt and optionally cumin and mix. Cook for another 5 minutes and remove from the stove.If the consistency is dark, some water is added and boiled for a while.In the meantime, take two tablespoons of butter in a small pan, heat it up and add a teaspoon of red pepper powder and take it off the stove.After the lentil soup is taken into a serving bowl, red pepper sauce is poured over it and served with a slice of lemon. ',
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

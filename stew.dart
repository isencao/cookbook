import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Stew extends StatelessWidget {
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
               '                   STEW              ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/guvec.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
   'How to Make a Casserole Ingredients for\n500 g cubed lamb or beef\n2 eggplants\n2 tomatoes\n2 green peppers\n2 red peppers\n2-3 potatoes\n1 tablespoon of chili paste\n1 teaspoon of black pepper\n1 teaspoon paprika\n1 teaspoon salt\nHalf a teaspoon of oil\n3 cups of hot water\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make a Casserole\nThe materials are prepared.\nAll materials are washed and peeled. After the tomatoes are peeled, they are cut into cubes.\nThe aubergines are peeled and cut into four pieces from the length and cut into a little coarse. Soak in salted water for 15 minutes.\nThe black peppers are cut into rings. Onions are edible.\nThe meat is stewed and roasted until it absorbs its water. (If you are going to use veal, I recommend boiling it first.\nOil is poured over it. Spices are added. Make a teaspoon of tomato paste water. Pour over the casserole.\nThe stew is cooked. The mouth of the earthen pot is tightly closed. Or you can use a cast iron pot like me, it will be very tasty in pouring.\nIf the casserole is full, it is cooked for an hour and a half or two. If it is half full like I did, bake for an hour or a half. Enjoy your meal.\n',
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


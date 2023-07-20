import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Patlican extends StatelessWidget {
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
         '          EGGPLANT SALADS             ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/patlcan.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Eggplant Salad Recipe\n3 roasted aubergines\n2 tomatoes\n4-5 green peppers\n8-10 sprigs of parsley\n1 onion\n3 teaspoons of sumac\nSalt\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Eggplant Salad Recipe?\nTo make the Eggplant Salad, first roast the eggplants, peel the skins and chop them into small cubes.\nIn a deep bowl, mix the chopped tomatoes, finely chopped parsley and peppers.\nFinely chop the onion, rub lightly with salt.\nAdd the onions along with the sumac to the eggplant mixture.\nFor the sauce, mix olive oil, garlic and lemon juice,Add it to the eggplant salad.\nLet stand for 10 minutes to absorb the sauce.\nYou can have our eggplant salad ready on your serving plate.\n',
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


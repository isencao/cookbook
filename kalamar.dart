import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Kalamar extends StatelessWidget {
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
           '               CALAMARY             ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/kalamar.jpg',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Kalamar\n300 grams of squid\njuice of 1 lemon\n1 bottle of mineral water\n1 teaspoon of granulated sugar\n1 teaspoon of baking soda\n1/2 cup of flour\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'First of all, squid is not a fish. Therefore, it would be more correct to ask the question of how to cook squid fish, in fact, how to cook squid at home.\nIt is different from the usual fish cooking methods. The most important start for making squid is the preparation process.\nThoroughly cleaned squid needs to be softened by marinating in sauce, which gives you the taste you expect from squid.\nIf you are wondering if I can consume squid without marinating; In any case, we can tell you that marinade is necessary.wings.\nAlthough this process may seem difficult with the thought of "I will do it wrong", it is actually quite easy because the body is separated from the right place by itself.\nAfterwards, you need to break the bond between the body and the head of the squid and clean both the inside of the body and the head with the broken wings.\nIn the meantime, if the ink sac explodes, do not panic, because this is not a critical event, it is a natural situation\n',
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


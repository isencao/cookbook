import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Dolma extends StatelessWidget {
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
                '                  DOLMA              ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
             SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/dolma.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
   'Ingredients for Stuffed Peppers Recipe\nHalf kg bell pepper\n1 tablespoon of rice for each pepper\n1 onion\n1 tablespoon tomato paste\nParsley\n2-3 tomatoes\nBlack pepper\nSalt\nMint\nOil-Olive Oil\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How To Do The Stuffing:\nLets clean our bell peppers.\nChop the onions and tomatoes into small pieces.\nWe will be using the edges of the tomatoes to cover the peppers, so we would better cut off the ones we are going to use to cover the peppers first.\nWe can use it for food.\nLets add the onion, rice, tomato paste, parsley, tomato, black pepper, salt, mint and very little oil we prepared in a bowl and mix well.\nThen lets fill this mortar with peppers.\nLets put the peppers we filled in the mortar in the pot.\nLets put hot water in the pot we made the mortar.\nThen, lets drizzle a little oil or olive oil on the peppers.\nLets cook our food on low heat.\n',
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


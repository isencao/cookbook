import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MantarDolma extends StatelessWidget {
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
           '        MUSHROOM  DOLMA             ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
             SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/mantardolma.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for the Stuffed Mushrooms Recipe\n9 large mushrooms\n100 g minced meat\n5 tablespoons of oil\n1 small onion\n2 green peppers\n1 tomato\nSalt, pepper\nchili pepper\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Stuffed Mushrooms with Minced Meat Recipe?\nBreak off the stems of the mushrooms and rub salt into them with your hands little by little. If you wish, you can also peel the shells of the mushrooms.\nPlace on a baking tray and bake in the oven at 170 degrees for 20 minutes.\nDo not put water or oil in the tray as the mushrooms will become watery.\nThen add the minced meat and fry it until it turns color.\nAfter it turns color, add the peeled and chopped tomatoes, salt and spices.\nWhen the sautéing is finished, fill the mushrooms with the mortar you prepared.\nPut the grated cheddar cheese on top.\nFor the sauce, dilute the tomato paste with very little water and pour over the mushrooms.\nThen return it to the oven and keep it in the oven at 170 ° C for another 10 minutes until the cheddar cheese melts.\n',
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


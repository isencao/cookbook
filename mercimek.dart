import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Mercimek extends StatelessWidget {
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
          '      GREEN LENTIL SALADS          ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/yesilmercikmek.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Green Lentil Salad Recipe\n1 cup green lentils\n1 carrot\n3-4 sprigs of spring onions\nDill\n3-4 sprigs of arugula\n1 red pepper\n1 cup of boiled corn\n3-4 pickled salads\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Green Lentil Salad Recipe?\nLentils are boiled in plenty of water.\nIn a separate place, carrots are also diced and boiled.\nGreens and other ingredients are also prepared.\nAdd all the ingredients to the boiled and cooled lentils and carrots.\nPour the sauce over it and mix.\n',
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

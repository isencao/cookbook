import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WhiteMocha extends StatelessWidget {
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
          '             WHITE MOCHA            ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/whitemocha.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for White Chocolate Mocha Recipe\n1 pack of white chocolate\n1 teaspoon Nescafe\nHalf a glass of boiling and milk\nFor the top;\nWhipped cream\nDragee chocolate sauce to decorate\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make White Chocolate Mocha Recipe\nMelt the milk and white chocolate.\nPour the hot water into the glass and mix it with Nescafe.\nTake the milk chocolate mixture and add it on top.\nWe put the whipped cream in the bag and pierce the end with a toothpick and squeeze it into the glass.\nWe pour our dragees with chocolate sauce.\n',
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

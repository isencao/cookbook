import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pancar extends StatelessWidget {
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
          '            BEET SALADS            ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/pancar.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Vinegar Beet Salad Recipe\n3 red beets\nHot water\n1 handful of parsley\n1 handful of dill\n1 cup canned corn\n1 handful of walnuts\n1 teaspoon of salt\n5 tablespoons of olive oil\n3 tablespoons grape or apple cider vinegar\n',

                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Beet Salad with Vinegar Recipe?\nFirst, lets peel the skin of the beets and cut them into a few pieces.\nLets put the cut beets in a suitable pot and add enough hot water to cover them and boil them for about 50 minutes. At this stage, lets not forget to check it with a fork from time to time.\nAfter our beets are boiled, lets drain the water and let it cool.\nLets chop our cooled beets as we wish. I preferred dicing.\nLets take the chopped beets into a mixing bowl, add finely chopped parsley, dill, canned corn, coarsely chopped walnuts, salt, olive oil and vinegar and mix.\nOur beetroot salad with vinegar is ready to serve.\n',
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

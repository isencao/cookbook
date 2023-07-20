import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CoolLime extends StatelessWidget {
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
           '                COOL LIME             ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 4, 4, 4),
                ),
              ),
             SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'images/coollime.png',
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
'Ingredients for Cool Lime Recipe\n2 lemons\n15-20 fresh mint leaves\n2 tablespoons of sugar\n4 glasses of cold water\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 60, 60),
                ),
              ),
              SizedBox(height: 20),
              Text(
'How to Make Cool Lime Recipe?\nIce is a must for this recipe. Thats why you should make sure you have ice in your fridge before you start the recipe. While I am putting ice in the fridge, I fill 1-2 glasses of water in the double ziplock bag and close the bag well and put it in the freezer horizontally, it is easier.\nFirst, lets grate the zest of our lemons. Be careful not to grate the white parts. With the measurements here, 1 liter of cool lime is prepared.\nAdd the mint leaves and sugar.\nThen I rub it with our hands for 2-3 minutes until the aroma of mint and lemon turns into sugar.\nAdd cold water and squeezed lemon juice on it and mix until sugar dissolves.\nLets take our drink into the jug by passing it through a fine strainer or cheesecloth.\nJust before serving, lets take the ice out of the freezer and break it by hitting it with a suitable tool. I broke it with a garlic hammer, you can break it with a hard object at hand.\nLets fill our glasses with crushed ice and pour our drink on it.\nAdd mint leaves and lemon slice and serve.\n',
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

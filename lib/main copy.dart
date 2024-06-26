import 'package:flutter/material.dart';

List<String> names = ["Ein","Zwei","Zwei","Drei"]; // List is ordered so there is an index 
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'}; //set is unordered so you can't use inex

void printNumbers(){
for(var element in halogens){                           //declare variable called element that will hold each item in halogens
  print(element);

}
} //end of List numbers function
  
void main() {
printNumbers();
runApp(const MyApp());

}

class MyApp extends StatelessWidget{  
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
   home: Scaffold(
    backgroundColor: Colors.blue,
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height:300,
          color:Colors.red,
        ),
        Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Second Row, Column 1, Item 1', style: TextStyle(color: Colors.white)),
                          Text('Second Row, Column 1, Item 2', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Second Row, Column 2, Item 1', style: TextStyle(color: Colors.white)),
                          Text('Second Row, Column 2, Item 2', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Second Row, Column 1, Item 1', style: TextStyle(color: Colors.white)),
                          Text('Second Row, Column 1, Item 2', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Second Row, Column 2, Item 1', style: TextStyle(color: Colors.white)),
                          Text('Second Row, Column 2, Item 2', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          
      
      ]
    )
    
   ), 
  );

}


}


/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rows and Columns Example'),
        ),
        body: Column(
          children: [
            // First row
            Container(
              height: 100,
              color: Colors.red,
              child: Center(child: Text('First Row', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            // Second row with two columns
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Second Row, Column 1, Item 1', style: TextStyle(color: Colors.white)),
                          Text('Second Row, Column 1, Item 2', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Second Row, Column 2, Item 1', style: TextStyle(color: Colors.white)),
                          Text('Second Row, Column 2, Item 2', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import "package:flutter/material.dart";

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  
  int _counter = 0;

 String TextChange = "Click me to change text";

  Change(){
  setState(() {
    _counter++;
  });


}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: Change, child: Text('$_counter'))
      )
      




    );
  }
}
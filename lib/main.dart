import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.deepOrange,
     ),
     home: MyHomePage(),
   );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomeHomePage();
  }
}
class MyCustomeHomePage extends State<MyHomePage> {
   int dataToChange = 0;
   void changedata()
   {
     setState(() {
       dataToChange += 1;
     });
   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "$dataToChange",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),),
            ),
            ElevatedButton(
              onPressed: changedata,
              // color: Colors.deepOrange,
             // splashColor: Colors.teal,
             //  padding: const EdgeInsets.symmetric(vertical: 15.0 , horizontal: 15.0),
              child: Text("Click Me!",
              style: TextStyle(color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

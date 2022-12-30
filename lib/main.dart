import 'package:flutter/material.dart';
import 'package:onescreentootherscreen/second%20page.dart';
void main(){
  runApp(
    MaterialApp(
      home: HomePage(
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("home screen"),
            centerTitle: true,
            backgroundColor: Colors.blue.shade900,
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>SecondPage()));
              },
              child: Text("next"),
            ),
          ),
        )
    );
  }
}


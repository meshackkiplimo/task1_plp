import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THIS IS KMAIYO"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome Message
              Text(
                "Welcome to Engineer!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 20), // Spacing
              // Interactive Button
              ElevatedButton(
                onPressed: () {
                  print("Button Pressed! 🎉");
                },
                child: Text("Click Me"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20), // Spacing
              // Display an Image
              Image.network(
                "https://via.placeholder.com/200",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

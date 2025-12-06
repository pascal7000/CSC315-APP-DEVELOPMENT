import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyUI(context));
  }

  Widget _bodyUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            "create account",
            style: TextStyle(
              color: Color.fromARGB(255, 47, 179, 240),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),
          const Text("please enter your details"),
          const SizedBox(height: 30),

          const Text(
            "your email",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 2),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelText: "Enter your email",
                suffixIcon: Icon(Icons.email),
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Text("password", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 2),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelText: "enter your password",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Repeat password",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 2),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelText: "Repeat password",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
          ),

          const SizedBox(height: 50),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                debugPrint("i was clicked");
              },

              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),

                backgroundColor: (Colors.teal),
              ),

              child: Text(
                "Register",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),

          SizedBox(
            height: 60,
            width: double.infinity,
            child: Center(child: Text("Already have an account")),
          ),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 30),
                padding: EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: (const Color.fromARGB(225, 204, 228, 225)),
              ),

              child: Text(
                "login",
                style: TextStyle(fontSize: 15, color: Colors.teal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stack/widgets/rounded_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hello'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              child: RoundedButton(btnName: 'Login', icon: Icon(Icons.lock,color: Colors.white,), bgColor: Colors.orange, callback: () {
                print('Logged in!!');
              },
              textStyle: mTextStyle16(),
              ),
            ),
            Container(height: 11),
            SizedBox(
              width: 120,
              child: RoundedButton(btnName: 'Login', icon: Icon(Icons.lock,color: Colors.white,), bgColor: Colors.orange, callback: () {
                print('Logged in!!');
              },
                textStyle: mTextStyle16(),
              ),
            ),
            Container(height: 11),
            SizedBox(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnName: 'Press',
                icon: Icon(Icons.play_circle,color: Colors.white,),
                bgColor: Colors.blue, callback: () {
                print('Playing!!');
              },
                textStyle: mTextStyle21(),
              ),
            ),
          ],
        ),
      )
    );
  }
}

TextStyle mTextStyle16() {
  return const TextStyle(fontSize: 16, color: Colors.white,);
}

TextStyle mTextStyle21() {
  return const TextStyle(fontSize: 21, color: Colors.white,);
}




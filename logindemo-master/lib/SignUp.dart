import 'package:flutter/material.dart';
//import 'package:logindemo/main.dart';
import 'SignIn.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String name;
String email;
int enroll;
String desg;
int pswd;

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("NAV630"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('asset/images/NAV_LogoFt_2.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                //controller: Text,
                key: ValueKey('name'),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter your Name '),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                //style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enrollment No ',
                    hintText: 'Enter your Enrollment No  '),
                onChanged: (data) {
                  setState(() {
                    enroll = int.parse(data);
                  });
                },
                //style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Designation ',
                    hintText: 'Enter your Designation  '),
                onChanged: (value) {
                  setState(() {
                    desg = value;
                  });
                },
                //style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                // style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
                onChanged: (data) {
                  setState(() {
                    pswd = int.parse(data);
                  });
                },
                //style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  FirebaseFirestore.instance.collection('users').add({
                    'name': name,
                    'enroll': enroll,
                    'desg': desg,
                    'email': email,
                    'pswd': pswd,
                  }).whenComplete(() => null);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}

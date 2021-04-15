import 'package:flutter/material.dart';
//import 'package:logindemo/Signup.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
    //final String email;
  //final String password;

  //-SignIn(this.email, this.password)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAV630'),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 300,
          
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(5)),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Congragulations......!!!! your account has been created successfully',
              style: TextStyle(color: Colors.white, fontSize: 25),
              
            ),
          ),
        ),
      ),
      
    );
  }
}

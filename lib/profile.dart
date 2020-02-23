import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
 _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Center(
        child: Image.asset("lib/assets/user.png", color: Colors.white, height: 200,),
      ),
    );
  }
}
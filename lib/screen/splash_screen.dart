import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth_scree.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splash.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 80, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset("assets/images/logo.png"),
                    radius: 40,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Food for Everyone",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Positioned(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => auth_screen()));
                },
                child: Text(
                  "Get starteed",
                  style: TextStyle(color: Colors.red),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  backgroundColor: Colors.white,
                  fixedSize: Size(MediaQuery.of(context).size.width / 1.2, 70),
                  textStyle: TextStyle(
                    fontSize: 17,
                  ),
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class auth_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
              ),
              TabBar(
                tabs: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign-Up",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],

                // )TabBarView(
                //   children: [],
                // ),
              ),
            ],
          )),
        ));
  }
}

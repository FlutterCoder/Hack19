import 'package:flutter/material.dart';
import './mentor_mainpage_signuppage.dart';
import './learner_mainpage_signuppage.dart';

class welcome_screen extends StatefulWidget {
  welcome_screen({Key key}) : super(key: key);

  _welcome_screenState createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 160.0),
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('assets/logo.png'),
                        )
                      ),
                      Text("Flutterly",style: TextStyle(fontSize: 40.0,color: Colors.blue),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => mentor_homepage());
                Navigator.pushReplacement(context, route);
              },
              child: SizedBox(
                height: 70.0,
                width: 200.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.blue)),
                  child: Align(
                    child: Text(
                      "Mentor",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30.0,
                        fontFamily: 'h1'
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => learner_hompage());
                Navigator.pushReplacement(context, route);
              },
              child: SizedBox(
                height: 70.0,
                width: 200.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                       border: Border.all(color: Colors.blue)),
                  child: Align(
                    child: Text(
                      "Learner",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}

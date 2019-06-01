import 'package:flutter/material.dart';

class learner_visit_mentor_profile extends StatefulWidget {
  String name1, views1, fc1, sub1, status1, desc1;
  learner_visit_mentor_profile(
      {Key key,
      this.name1,
      this.status1,
      this.views1,
      this.sub1,
      this.fc1,
      this.desc1})
      : super(key: key);

  _learner_visit_mentor_profileState createState() =>
      _learner_visit_mentor_profileState();
}

class _learner_visit_mentor_profileState
    extends State<learner_visit_mentor_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
                  child: new Stack(
            children: <Widget>[
              Column(
                
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 100.0),
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 120.0, color: Colors.green)
                          ])),
                  SizedBox(height: 30.0),
                  Text(
                    'Adam Smith',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'h1'),
                  ),
                
                  SizedBox(height: 15.0),
                  SizedBox(
                    
                    height: 100.0,
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                                      child: Text(
                                        "Flutter",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      )),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),

                                      child: Text(
                                        "Topic",
                                        style: TextStyle(
                                            fontSize: 14.0, color: Colors.white),
                                      )),
                                ],
                              ),
                               Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                                      child: Text(
                                        "100k",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      )),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),

                                      child: Text(
                                        "Viewers",
                                        style: TextStyle(
                                            fontSize: 14.0, color: Colors.white),
                                      )),
                                ],
                              ),
                               Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                                      child: Text(
                                        "100",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,color: Colors.white),
                                      )),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),

                                      child: Text(
                                        "Fcredits",
                                        style: TextStyle(
                                            fontSize: 14.0, color: Colors.white),
                                      )),
                                ],
                              ),
                             
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            " Hey Folks! \n\nFlutter is Google’s portable UI toolkit for building beautiful, natively-compiled applications for mobile, web, and desktop from a single codebase. Also, It’s free and open source!\n\n\nJoin me live and we'll build some cool apps using FLUTTER",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 90.0,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
color: Colors.green,
borderRadius: BorderRadius.circular(20.0),
                            ),
            
                            child: Center(child: Text("Join Now",style: TextStyle(color: Colors.white,fontSize: 20.0),)),
                          ),
                        ),
                        
                      ],
                    
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

import 'package:flutter/material.dart';

class mentor_homescreen extends StatefulWidget {
  

  _mentor_homescreenState createState() =>
      _mentor_homescreenState();
}

class _mentor_homescreenState
    extends State<mentor_homescreen> {
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
                
                  SizedBox(height: 25.0),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Stream Now ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:Form(
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration:InputDecoration(
                                    hintText: "Enter Topic",
                                  ),
                                ),
                                TextFormField(
                                  decoration:InputDecoration(
                                    hintText: "Enter Description here"
                                  ),
                                ),
                                 TextFormField(
                                  decoration:InputDecoration(
                                    hintText: "How many Fcredits? "
                                  ),
                                ),
                              ],
                            ),
                          )
                        ),
                        SizedBox(
                          height: 90.0,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
color: Colors.green,
borderRadius: BorderRadius.circular(20.0),
                            ),
            
                            child: Center(child: Text("Go live",style: TextStyle(color: Colors.white,fontSize: 20.0),)),
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

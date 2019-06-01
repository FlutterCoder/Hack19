import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../learner_screens/learner_visit_mentor_profile.dart';
import './learner_homescreen.dart';

class learner_homescreen extends StatefulWidget {
  learner_homescreen({Key key}) : super(key: key);

  _learner_homescreenState createState() => _learner_homescreenState();
}

class _learner_homescreenState extends State<learner_homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _showBody(),
    );
  }

  Widget _showBody() {
    return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 90.0),
          decoration: BoxDecoration(
            color: Colors.blueAccent
          ),
          child: Column(

    children: <Widget>[
      Center(
        child:Container(
          padding: EdgeInsets.only(bottom: 40.0),

          child: Text("Mentors",style: TextStyle(fontSize: 35.0,color: Colors.white,fontFamily: 'h1'),))
      ),
      _listItem("Adam smith", "live", "55k", "flutter", "10", "desc",'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
      _listItem("Adam smith", "live", "5k", "java", "10", "desc",'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
      _listItem("Adam smith", "live", "46k", "flutter", "10", "desc",'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
      _listItem("Adam smith", "live", "56k", "Html", "10", "desc",'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
      _listItem("Adam smith", "live", "23k", "flutter", "10", "desc",'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
      _listItem("Adam smith", "live", "56k", "flutter", "10", "desc",'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
      _listItem("Adam smith", "live", "23k", "flutter", "10", "desc",'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),

    ]
          ),
        ),
      );
  }

  Widget _listItem(String name, String status, String views, String sub,String fc, String desc,String url) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => learner_visit_mentor_profile(
                    name1: name,
                    status1: status,
                    views1: views,
                    sub1: sub,
                    fc1: fc,
                    desc1: desc,
                  ),
            ));
      },
      child: SizedBox(
        height: 130.0,
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.blue)),
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    
                    backgroundImage: NetworkImage(url),
                    radius: 30.0,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(width: 15.0),
                  Text(name,
                      style: TextStyle(fontSize: 25.0, color: Colors.blue)),
                  SizedBox(width: 35.0),
                  Text(status,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: (status == "offline")
                              ? Colors.grey
                              : Colors.green)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                    child: Text("Sub"),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Text(
                        sub,
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 100.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
                    child: Text("Viewer"),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Text(
                        views,
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

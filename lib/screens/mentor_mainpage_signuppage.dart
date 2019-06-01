import 'package:flutter/material.dart';
import './mentor_homepage_loginpage.dart';
import './mentor_homescreen.dart';

class mentor_homepage extends StatefulWidget {
  mentor_homepage({Key key}) : super(key: key);

  _mentor_homepageState createState() => _mentor_homepageState();
}

enum FormMode { LOGIN, SIGNUP }

class _mentor_homepageState extends State<mentor_homepage> {
  String _email;

  String _password;
  String _errorMessage;

  // Initial form is login form
  FormMode _formMode = FormMode.LOGIN;
  bool _isIos;
  bool _isLoading;
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _showBody(),
        ],
      ),
    );
  }

  Widget _showBody() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            _showLogo(),
            _showEmailInput(),
            _showPasswordInput(),
            _showGitInput(),
            _showPrimaryButton(),
            _showSecondaryButton(),
          ],
        ),
      ),
    );
  }

  Widget _showLogo() {
    return new Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 70.0,
          child: FlutterLogo(
            size: 100.0,
          ),
        ),
      ),
    );
  }

  Widget _showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Email',
            icon: new Icon(
              Icons.mail,
              color: Colors.blue,
            )),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value,
      ),
    );
  }

  Widget _showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Password',
            icon: new Icon(
              Icons.lock,
              color: Colors.blue,
            )),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onSaved: (value) => _password = value,
      ),
    );
  }

  Widget _showGitInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'http://GitHub link',
            icon: new Icon(
              Icons.link,
              color: Colors.blue,
            )),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onSaved: (value) => _password = value,
      ),
    );
  }

  Widget _showSecondaryButton() {
    return new FlatButton(
      child: new Text('Have an account? Log in',
          style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => mentor_homepage_loginpage()),
        );
      },
    );
  }

  Widget _showPrimaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
        child: SizedBox(
          height: 50.0,
          child: new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.blue,
            child: new Text('Sign Up',
                style: new TextStyle(fontSize: 20.0, color: Colors.white)),
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => mentor_homescreen());
              Navigator.pushReplacement(context, route);
            },
          ),
        ));
  }
}

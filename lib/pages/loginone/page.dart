import 'package:flutter/material.dart';
import 'package:loginpages/pages/loginone/header_clip_behaviour.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: HeaderClip(),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    gradient: LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.blue],
                        begin: Alignment.centerRight,
                        end: new Alignment(-1.0, -1.0)),
                  ),
                ),
                // Cliped area material will be here
              ],
            ),
          ),
          Center(
            child: SizedBox(
              height: 400.0,
              width: 300.0,
              child: Card(
                elevation: 4.0,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(25.0), child: Text("LOGO", style: TextStyle(fontSize: 24.0),)),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: "Enter email address", icon: Icon(Icons.email)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: "Enter Password", icon: Icon(Icons.text_fields)),
                          obscureText: true,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.blue),
                            )),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                              colors: [Colors.lightBlueAccent, Colors.blue],
                              begin: Alignment.centerRight,
                              end: new Alignment(-1.0, -1.0)),
                        ),
                        child: FlatButton(
                          // elevation: 4.0,
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                          color: Colors.transparent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              height: 40.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(59, 89, 152, 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("Facebook"),
                                color: Colors.transparent,
                                textColor: Colors.white,
                              ),
                            ),
                            Container(
                              height: 40.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(222, 82, 70, 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("Google"),
                                textColor: Colors.white,
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
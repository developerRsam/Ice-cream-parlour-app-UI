import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './home.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFF2DAD9),
        body: Stack(
          children: <Widget>[
            Opacity(
                opacity: 0.6, child: Image.asset('assets/images/bg_ic2.png')),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.56,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    )),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 45, left: 36),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Please Sign In',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 36,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 5),
                            hintText: 'name@example.com',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 36),
                            child: TextField(
                              obscureText: _isObscure,
                              controller:
                                  TextEditingController(text: 'password'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 5),
                                hintText: 'password',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 25),
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xFFD09490),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xFFD09490),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(Home.routeName);
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Color(0xFFD09490),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 45, top: 25),
              alignment: Alignment.centerRight,
              child: Container(
                height: 70,
                width: 70,
                padding: EdgeInsets.only(right: 45),
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color(0xFFFEDEDE),
                ),
                child: IconButton(
                  padding: EdgeInsets.only(left: 25),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Home.routeName);
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

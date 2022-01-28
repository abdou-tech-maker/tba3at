import 'package:flutter/material.dart';
import 'package:store/cutcorner.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool hidePassword = true;
  void hideMyPass() {
    if (hidePassword) {
      setState(() {
        hidePassword = false;
      });
    } else {
      setState(() {
        hidePassword = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text('put your title here '),
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 120,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: Colors.blue,
                            ),
                            border: CutCornersBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                            labelText: 'Email',
                            hintText: 'Enter Your Email '),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          TextField(
                            controller: password,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.blue,
                                ),
                                /*  errorText: error == 'false'
                                      ? 'incorrect login information '
                                      : null,*/
                                border: CutCornersBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2),
                                ),
                                suffixIcon: IconButton(
                                  icon: hidePassword
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: hideMyPass,
                                ),
                                labelText: 'password',
                                hintText: 'Enter Your Password'),
                            obscureText: hidePassword ? true : false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

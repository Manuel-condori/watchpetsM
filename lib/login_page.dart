import 'package:flutter/material.dart';
import 'package:watchpets/services/authservice.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF052035),
        child: Form(key: formKey, child: _buildLoginForm()),
      ),
    );
  }

  _buildLoginForm() {
    return Container(
        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              //width: 400,
              child: Image(
                width: 500,
                height: 100,
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
                image: AssetImage('assets/logo2.png'),
              ),
            ),
            SizedBox(
              width: 150,
              child: Image(
                height: 200,
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
                image: AssetImage('assets/ubicacion2.png'),
              ),
            ),
            Center(
              child: Text('--------- Login --------',
                  style: TextStyle(
                      fontFamily: 'Trueno',
                      fontSize: 25.0,
                      color: Colors.green)),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                AuthService().fbSignIn();
              },
              child: Container(
                  margin: EdgeInsets.only(top: 90),
                  width: 300,
                  height: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        /*border: Border.all(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 3.0),*/
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: ImageIcon(AssetImage('assets/facebook.png'),
                                size: 25.0)),
                        SizedBox(width: 10.0),
                        Center(
                            child: Text('Login with facebook',
                                style: TextStyle(fontFamily: 'Trueno'))),
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}

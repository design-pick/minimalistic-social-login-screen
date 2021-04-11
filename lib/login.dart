import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  child: SvgPicture.asset('images/login_logo.svg'),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Email ID',
                        prefixIcon: Icon(Icons.alternate_email),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade500, width: 0.5))),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.shade500, width: 0.5))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 36.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Forgot?',
                            style: TextStyle(color: Color(0XFF0065FF)),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0XFF0065FF),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18.0),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'Or, Login with...',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: SvgPicture.asset('images/google-icon.svg'),
                      ),
                      width: 110,
                      height: 60,

                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                          border: Border.all(
                              color: Colors.grey.shade500, width: 0.5)),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: SvgPicture.asset('images/facebook-icon.svg'),
                      ),
                      width: 110,
                      height: 60,

                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                          border: Border.all(
                              color: Colors.grey.shade500, width: 0.5)),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: SvgPicture.asset('images/apple-icon.svg'),
                      ),
                      width: 110,
                      height: 60,

                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                          border: Border.all(
                              color: Colors.grey.shade500, width: 0.5)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New User? ',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                            color: Color(0XFF0065FF),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_flutter/common_widgets/common_widgets.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Text(
          'Time Tracker',
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width > 500
                ? 400
                : MediaQuery.of(context).size.width * (4 / 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SignInButton(
                  borderRadius: 8,
                  color: Colors.white,
                  image: Image.asset('assets/images/google-logo.png'),
                  onPressed: () {
                    print("Sign in with Google");
                  },
                  text: "Sign in with Google",
                  textColor: Colors.redAccent,
                ),
                SizedBox(
                  height: 14,
                ),
                SignInButton(
                  borderRadius: 8,
                  color: Color(0xFF334D92),
                  image: Image.asset('assets/images/facebook-logo.png'),
                  onPressed: () {
                    print("Sign in with Facebook");
                  },
                  text: "Sign in with Facebook",
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 14,
                ),
                SignInButton(
                  borderRadius: 8,
                  color: Colors.teal,
                  image: Image.asset('assets/images/email-logo.png'),
                  onPressed: () {
                    print("Sign in with Email");
                  },
                  text: "Sign in with Email",
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 14,
                ),
                SignInButton(
                  borderRadius: 8,
                  color: Colors.lime[300],
                  onPressed: () {
                    print("Go anonymous");
                  },
                  text: "Go anonymous",
                  textColor: Colors.black87,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/common_widgets/custom_raised_button.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final Image image;
  final Color color;
  final double borderRadius;
  final Color textColor;
  final VoidCallback onPressed;

  const SignInButton(
      {Key key,
      this.text,
      this.color,
      this.borderRadius: 2,
      this.textColor,
      this.onPressed,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRaisedButton(
        borderRadius: borderRadius,
        color: color,
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 35, height: 35, child: image),
              SizedBox(
                width: 20,
              ),
              Text(text, style: TextStyle(color: textColor, fontSize: 14))
            ],
          ),
        ));
  }
}

import 'package:feedback/constants.dart';
import 'package:feedback/rounded_button.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('Submit',
          style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
          width: 5.0,
        ),
        RoundedButton(
            icon: Icon(Icons.arrow_forward),
            iconColor: Colors.white,
            bgColor: kPrimaryColor,
            tap: () {}
        ),
      ],
    );
  }
}


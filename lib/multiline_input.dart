import 'package:feedback/constants.dart';
import 'package:flutter/material.dart';

class MultilineInput extends StatelessWidget {
  const MultilineInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0.0, 15.0),
              color: kTextColor.withAlpha(20)
          ),
        ],
      ),
      child: TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 2,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Additional comment',
          hintStyle: TextStyle(
            color: kTextLightColor,
          ),
        ),
      ),
    );
  }
}


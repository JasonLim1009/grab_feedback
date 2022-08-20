import 'package:feedback/constants.dart';
import 'package:flutter/material.dart';

class RideStats extends StatelessWidget {
  const RideStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RideInfo(
          title: 'Time',
          value: '\$9.99',
        ),
        RideInfo(
          title: 'Distance',
          value: '15 km',
        ),
        RideInfo(
          title: 'Time',
          value: '15 min',
        ),
      ],
    );
  }
}

class RideInfo extends StatelessWidget {
  const RideInfo({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title + '\n',
            style: TextStyle(
                color: kTextLightColor,
                fontSize: 14
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
        ],
      ),
    );
  }
}


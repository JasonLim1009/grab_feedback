import 'package:feedback/app_header.dart';
import 'package:feedback/constants.dart';
import 'package:feedback/custom_app_bar.dart';
import 'package:feedback/main_button.dart';
import 'package:feedback/multiline_input.dart';
import 'package:feedback/proportionate.dart';
import 'package:feedback/ride_stat.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppHeader(),

            Positioned(
                top: -300,
                left: -187,
                child: Opacity(
                  opacity: 0.9,
                  child: Image.asset(''),
              ),
            ),
            SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(kDefaultPadding * 2),
                  child: Column(
                    children: [
                      CustomAppBar(),
                      SizedBox(height: kDefaultPadding * 2),
                      ClipOval(
                        child: Image.asset(
                          'images/wx.png',

                        width: getScreenPropotionWidth(166, size),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding),
                      Text('Your Driver',
                      style: TextStyle(
                        color: kTextLightColor,
                        fontSize: 14
                      ),
                      ),
                      Text('JASON LIM',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: kDefaultPadding),
                      Divider(
                        color: kTextLightColor,
                      ),
                      SizedBox(height: kDefaultPadding),
                      RideStats(),
                      SizedBox(height: kDefaultPadding),
                      Divider(
                        color: kTextLightColor,
                      ),
                      SizedBox(height: kDefaultPadding),
                      Text(
                        'Mark',
                        style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'How is your trip?',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: kDefaultPadding),
                      SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 5,
                        size: 30,
                        isReadOnly: false,
                        spacing: kDefaultPadding,
                      ),
                      SizedBox(height: kDefaultPadding),
                      MultilineInput(),
                      SizedBox(height: kDefaultPadding),
                      MainButton(),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}


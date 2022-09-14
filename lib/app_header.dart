import 'package:feedback/constants.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: double.infinity,
        height: 350.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFe57373),
              Color(0xFFef5350),
              Color(0xFFf44336),
              Color(0xFFe53935),
              Color(0xFFd32f2f),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,)
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 170);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

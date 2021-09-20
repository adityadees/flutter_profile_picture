library flutter_profile_picture;

import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/colors/color.dart';
import 'package:flutter_profile_picture/input_text.dart';

class ProfilePicture extends StatelessWidget {
  final String name;
  final String role;
  final double radius;
  final double fontsize;
  final bool tooltip;
  const ProfilePicture({
    Key key,
    @required this.name,
    @required this.radius,
    @required this.fontsize,
    this.role,
    this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (tooltip == true) {
      return MyTooltip(
          message: name + '\n' + role,
          child: Avatar(radius: radius, name: name, fontsize: fontsize));
    } else {
      return Avatar(radius: radius, name: name, fontsize: fontsize);
    }
  }
}

class MyTooltip extends StatelessWidget {
  final Widget child;
  final String message;

  MyTooltip({@required this.message, @required this.child});

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<State<Tooltip>>();
    return Tooltip(
      key: key,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: TooltipShapeBorder(arrowArc: 0.1),
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 10,
      ),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      message: message,
      verticalOffset: 25,
      waitDuration: const Duration(seconds: 10),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _onTap(key),
        child: child,
      ),
    );
  }

  void _onTap(GlobalKey key) {
    final dynamic tooltip = key.currentState;
    tooltip?.ensureTooltipVisible();
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
    @required this.radius,
    @required this.name,
    @required this.fontsize,
  }) : super(key: key);

  final double radius;
  final String name;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Text(
        name == '' ? '' : GetInitialName.parseName(name).toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontsize,
          letterSpacing: 1.4,
        ),
      ),
      backgroundColor: name == ''
          ? ColorName.colorNameZ
          : fixedColor(
              GetInitialName.parseName(name),
            ),
      foregroundColor: Colors.white,
    );
  }
}

class TooltipShapeBorder extends ShapeBorder {
  final double arrowWidth;
  final double arrowHeight;
  final double arrowArc;
  final double radius;

  TooltipShapeBorder({
    this.radius = 6.0,
    this.arrowWidth = 20.0,
    this.arrowHeight = 10.0,
    this.arrowArc = 0.0,
  }) : assert(arrowArc <= 1.0 && arrowArc >= 0.0);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: arrowHeight);

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) => null;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    rect = Rect.fromPoints(
        rect.topLeft, rect.bottomRight - Offset(0, arrowHeight));
    double x = arrowWidth, y = arrowHeight, r = 1 - arrowArc;

    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)))
      ..moveTo(rect.topCenter.dx + x / 2, rect.topCenter.dy - x + 25 / 1.25)
      ..relativeLineTo(-x / 2 * r, -y * r)
      ..relativeQuadraticBezierTo(
          -x / 2 * (1 - r), y * (1 - r), -x * (1 - r), 0)
      ..relativeLineTo(-x / 2 * r, y * r);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    Paint paint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawPath(getOuterPath(rect), paint);
    canvas.clipPath(getOuterPath(rect));
  }

  @override
  ShapeBorder scale(double t) => this;
}

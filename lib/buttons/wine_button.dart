import 'package:flutter/material.dart';
import 'package:wine/components/shadows.dart';

class WineButton extends StatefulWidget {
  final String text;
  final Color color;
  final double fontSize;

  WineButton({
    this.text,
    this.color,
    this.fontSize = 18.0,
});

  @override
  _WineButtonState createState() => _WineButtonState();
}

class _WineButtonState extends State<WineButton> {
  bool _isPressed = false;

  void onPressedUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  void onPressedDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _buttonSizeHeight = MediaQuery.of(context).size.height / 6.5;

    return SizedBox(
      height: _buttonSizeHeight,
      width: 120,
      child: Listener(
        onPointerDown: onPressedDown,
        onPointerUp: onPressedUp,
        child: Stack(
          children: <Widget>[
            NeumorphicAnimation(isPressed: _isPressed),
            Center(
              child: Text(
                  widget.text,
                style: TextStyle(
                  fontSize: widget.fontSize, fontFamily: 'Merriweather',
                  fontWeight: _isPressed ? FontWeight.w900 : FontWeight.w400,
                  color: _isPressed ? widget.color.withOpacity(0.8): widget.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NeumorphicAnimation extends StatelessWidget {
  final bool _isPressed;

  NeumorphicAnimation({@required bool isPressed}) : _isPressed = isPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      decoration: _isPressed ? innerShadow(context) : outerShadow(context),
    );
  }
}

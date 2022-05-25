import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TabItems extends StatefulWidget {
  final String title;
  final IconData iconData;
  final bool selected;
  final Function callbackFunction;

  TabItems({
    @required this.title,
    @required this.iconData,
    @required this.selected,
    @required this.callbackFunction,
});

  @override
  _TabItemsState createState() => _TabItemsState();
}

const double ICON_OFF = -3;
const double ICON_ON = 0;
const double TEXT_OFF = 3;
const double TEXT_ON = 1;
const double ALPHA_OFF = 0;
const double ALPHA_ON = 1;
const int ANIM_DURATION = 300;
const Color BLACK = Colors.black;

class _TabItemsState extends State<TabItems> {

  double iconYAlign = ICON_ON;
  double textYAlign = TEXT_OFF;
  double iconALPHA = ALPHA_ON;

  @override
  void initState() {
    super.initState();
    _setIconTextAlpha();
  }

  @override
  void didUpdateWidget(covariant TabItems oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setIconTextAlpha();
  }

  _setIconTextAlpha() {
    setState(() {
      iconYAlign = (widget.selected) ? ICON_OFF : ICON_ON;
      textYAlign = (widget.selected) ? TEXT_ON : TEXT_OFF;
      iconALPHA = (widget.selected) ? ALPHA_OFF : ALPHA_ON;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: AnimatedAlign(
                duration: Duration(milliseconds: ANIM_DURATION),
                alignment: Alignment(0, textYAlign),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(widget.title,
                    style: TextStyle(fontFamily: 'Cormorant Upright', fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: AnimatedAlign(
                duration: Duration(milliseconds: ANIM_DURATION),
                curve: Curves.easeIn,
                alignment: Alignment(0, iconYAlign),
                child: AnimatedOpacity(
                    opacity: iconALPHA, 
                    duration: Duration(milliseconds: ANIM_DURATION),
                    child: IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        padding: EdgeInsets.all(0),
                        alignment: Alignment(0, 0),
                        icon: Icon(widget.iconData),
                        color: BLACK,
                        onPressed: () {
                          widget.callbackFunction();
                        },
                    ),
                ),
              ),
            ),
          ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math' as math;

class FloatingExpandableMenuWidget extends StatefulWidget {
  final List<IconData> icons;
  final List<Function> onPressedIcons;
  final IconData mainIcon;

  const FloatingExpandableMenuWidget({
    Key key,
    this.mainIcon = Icons.add,
    this.icons = const [],
    this.onPressedIcons = const [],
  })  : assert(icons.length == onPressedIcons.length,
            'Each Icon must have an Function'),
        assert(icons != null || onPressedIcons != null || mainIcon != null,
            'Neither Icons list can be null, neither onPressedIcons, neither mainIcon'),
        super(key: key);

  @override
  _FloatingExpandableMenuWidgetState createState() =>
      _FloatingExpandableMenuWidgetState();
}

class _FloatingExpandableMenuWidgetState
    extends State<FloatingExpandableMenuWidget> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _translateButton;

  static const _floatingActionButtonHeight = 56.0;

  bool open = false;
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() {
        setState(() {});
      });

    _translateButton = Tween<double>(
      begin: _floatingActionButtonHeight,
      end: -8.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.8,
        curve: Curves.easeOut,
      ),
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  List<Widget> _menuButtons(Color backgroundColor, Color iconColor) {
    var index = -1;
    var length = widget.icons.length;

    return widget.icons.map<Widget>((icon) {
      index++;
      if (index > 0) length--;

      return Transform(
        transform: Matrix4.translationValues(
          0.0,
          _translateButton.value * length,
          0.0,
        ),
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          height: _floatingActionButtonHeight,
          width: _floatingActionButtonHeight,
          child: FloatingActionButton(
            backgroundColor: backgroundColor,
            mini: true,
            child: Icon(icon, color: iconColor),
            onPressed: widget.onPressedIcons[index],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).cardColor;
    Color iconColor = Theme.of(context).accentColor;

    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      ..._menuButtons(backgroundColor, iconColor)
        ..add(
          FloatingActionButton(
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget child) {
                return Transform(
                  transform:
                      Matrix4.rotationZ(_animationController.value * math.pi),
                  alignment: FractionalOffset.center,
                  child: Icon(_animationController.isDismissed
                      ? widget.mainIcon
                      : Icons.close),
                );
              },
            ),
            onPressed: () {
              if (_animationController.isDismissed) {
                _animationController.forward();
              } else {
                _animationController.reverse();
              }
            },
          ),
        ),
    ]);
  }
}

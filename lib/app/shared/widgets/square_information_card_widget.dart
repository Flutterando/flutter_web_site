import 'package:flutter/material.dart';

import '../shared.dart';

class SquareInformationCardWidget extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final String title;
  final String description;
  final String subtitle;
  final Widget child;
  final String buttonLabel;
  final Color buttonColor;
  final Color buttonLabelColor;
  final double buttonLabelSize;
  final Function onPressed;

  const SquareInformationCardWidget({
    Key key,
    @required this.height,
    @required this.backgroundColor,
    this.title,
    this.description,
    this.child,
    this.subtitle,
    this.buttonLabel,
    this.buttonColor,
    this.buttonLabelSize,
    this.buttonLabelColor,
    this.onPressed,
  })  : assert(child != null || title != null,
            'Either a title or a child widget and subtitle must be informed.'),
        assert(child != null || description != null,
            'Either a description text or a child widget and subtitle must be informed.'),
        assert(height != null, 'A height must be informed.'),
        assert(backgroundColor != null, 'A background color must be informed.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: 400,
      height: this.height,
      color: this.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildBody(cardHeight: this.height, context: context),
          SquareButtonWidget(
            color: this.buttonColor,
            label: this.buttonLabel,
            fontSize: this.buttonLabelSize,
            labelColor: this.buttonLabelColor,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }

  Widget buildBody({double cardHeight, BuildContext context}) {
    if (this.child != null) {
      return Column(
        children: [
          this.child,
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(this.subtitle ?? '').subtitleSquaredCard(),
          )
        ],
      );
    }
    return Column(
      children: [
        Text(this.title).titleSquaredCard(),
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 20),
          child: Divider(
            color: Theme.of(context).fWhiteColorS,
            thickness: 2,
          ),
        ),
        Text(this.description).bodySquaredCard(),
      ],
    );
  }
}

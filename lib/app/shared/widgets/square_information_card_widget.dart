import 'package:flutter/material.dart';

import '../shared.dart';

class SquareInformationCardWidget extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final String title;
  final String description;
  final String assetPath;

  const SquareInformationCardWidget({
    Key key,
    @required this.backgroundColor,
    @required this.height,
    this.title,
    this.description,
    this.assetPath,
  })  : assert(assetPath != null || title != null,
            "Either a title or an asset path must be informed"),
        assert(assetPath != null || description != null,
            "Either a description text or an asset path must be informed"),
        assert(height != null, "A height must be informed."),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: 400,
      height: this.height,
      color: this.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: buildBody(size: size, context: context)),
          SquareButtonWidget(
            color: Colors.grey,
            label: "LOREM IPSUM AMET",
          )
        ],
      ),
    );
  }

  Widget buildBody({Size size, BuildContext context}) {
    if (this.assetPath != null) {
      return Column(
        children: [
          Container(
            height: size.height * .75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(this.assetPath),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text("Nome da empresa").subtitleSquaredCard(),
            ),
          )
        ],
      );
    }
    return Column(
      children: [
        Text(this.title).titleSquaredCard(),
        Container(
          margin: EdgeInsets.only(top: 40, bottom: 20),
          width: size.width,
          height: 2,
          color: Theme.of(context).fWhiteColorS,
        ),
        Text(this.description).bodySquaredCard(),
      ],
    );
  }
}

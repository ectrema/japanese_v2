import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpaceRedWidget extends StatelessWidget {
  final BuildContext context;
  const SpaceRedWidget({
    Key key,
    @required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).backgroundColor,
            Theme.of(context).primaryColor,
            Theme.of(context).backgroundColor,
          ],
        ),
      ),
    );
  }
}

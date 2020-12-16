import 'package:flutter/material.dart';
import '../core/constants.dart';

class ImageChild extends StatelessWidget {
  const ImageChild({
    Key key,
    @required this.imageName,
  }) : super(key: key);

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(imageName),
          fit: BoxFit.fitWidth,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            color: kPrimaryColor.withOpacity(0.3),
          )
        ],
      ),
    );
  }
}

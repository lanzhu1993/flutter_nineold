import "package:flutter/material.dart";
import 'package:transparent_image/transparent_image.dart';

class ImageWithLoader extends StatelessWidget {
  const ImageWithLoader(
      {@required this.url,
      @required this.backgroundColor,
      @required this.strokeWidth,
      @required this.valueColor,
      this.fit = BoxFit.cover,
      this.loaderSize = 48.0});

  final String url;
  final BoxFit fit;
  final double loaderSize;

  final Color backgroundColor;
  final double strokeWidth;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          color: Colors.grey,
          child: Center(
            child: SizedBox(
              width: loaderSize,
              height: loaderSize,
              child: _buildCircularProgressIndicator(
                  cpBackgroundColor: backgroundColor,
                  cpStrokeWidth: strokeWidth,
                  cpValueColor: valueColor),
            ),
          ),
        ),
        FadeInImage.memoryNetwork(
          image: url,
          fit: fit,
          placeholder: kTransparentImage,
        ),
      ],
    );
  }
}

CircularProgressIndicator _buildCircularProgressIndicator(
    {Color cpBackgroundColor, double cpStrokeWidth, Color cpValueColor}) {
  return CircularProgressIndicator(
    backgroundColor: cpBackgroundColor,
    strokeWidth: cpStrokeWidth,
    valueColor: AlwaysStoppedAnimation<Color>(cpValueColor),
  );
}

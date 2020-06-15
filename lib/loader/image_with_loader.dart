import "package:flutter/material.dart";
import 'package:transparent_image/transparent_image.dart';

class ImageWithLoader extends StatelessWidget {
  const ImageWithLoader(
      {this.url,
      this.fit = BoxFit.cover,
      this.loaderSize = 48.0,
      this.backgroundColor = Colors.white,
      this.strokeWidth = 3,
      this.valueColor = Colors.tealAccent});

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
                  backgroundColor: backgroundColor,
                  strokeWidth: strokeWidth,
                  valueColor: valueColor),
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
    {Color backgroundColor, double strokeWidth, Color valueColor}) {
  return CircularProgressIndicator(
    backgroundColor: backgroundColor,
    strokeWidth: strokeWidth,
    valueColor: AlwaysStoppedAnimation<Color>(valueColor),
  );
}

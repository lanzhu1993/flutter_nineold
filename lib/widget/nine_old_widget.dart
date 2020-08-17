import 'package:flutter/material.dart';
import 'package:nineold/loader/image_with_loader.dart';
import 'package:nineold/watcher/gallery_watcher.dart';

class NineOldWidget extends StatelessWidget {
  final List<String> images;
  final TextStyle moreStyle;

  final Color backgroundColor;
  final double strokeWidth;
  final Color valueColor;

  final OnLongPressCallback onLongPressListener;

  NineOldWidget(
      {@required this.images,
      this.moreStyle,
      this.backgroundColor = Colors.white,
      this.strokeWidth = 3,
      this.valueColor = Colors.tealAccent,
      this.onLongPressListener});

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return _buildImagesFrame(context);
  }

  Widget _buildImagesFrame(BuildContext context) {
    switch (images.length) {
      case 0:
        return SizedBox.shrink();
      case 1:
        return _buildSingleImage(context);
      case 2:
        return _buildTwoImages(context);
      case 3:
        return _buildThreeImages(context);
      case 4:
        return _buildFourImages(context);
      case 5:
        return _buildFiveImages(context);
      case 6:
        return _buildSixImages(context);
      case 7:
        return _buildSevenImages(context);
      case 8:
        return _buildEightImages(context);
      case 9:
        return _buildNineImages(context);
      default:
        return _buildNineImages(context);
    }
  }

  Widget _buildSingleImage(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: width,
        maxWidth: width,
      ),
      child: _aspectRatioImage(context, index: 0, aspectRatio: 1),
    );
  }

  Widget _buildTwoImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: width / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child: _aspectRatioImage(context, index: 0)),
          _spacer(),
          Expanded(child: _aspectRatioImage(context, index: 1)),
        ],
      ),
    );
  }

  Widget _buildThreeImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: (width * 2 / 3) + 1,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: (width * 2 ~/ 3),
              child: _aspectRatioImage(context, index: 0)),
          _spacer(),
          Expanded(
            flex: width ~/ 3,
            child: Column(
              children: <Widget>[
                _aspectRatioImage(context, index: 1),
                _spacer(),
                _aspectRatioImage(context, index: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFourImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: width,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 0)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 1)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 2)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 3)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFiveImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: width * 5 / 6,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 0)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 1)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 2)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 3)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 4)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSixImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: width * 2 / 3,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 0)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 1)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 2)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 3)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 4)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 5)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSevenImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: width,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 0)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 1)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 2)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 3)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 4)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 5)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 6)),
              _spacer(),
              Expanded(child: _aspectRatioEmpty()),
              _spacer(),
              Expanded(child: _aspectRatioEmpty()),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildEightImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: width,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 0)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 1)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 2)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 3)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 4)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 5)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 6)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 7)),
              _spacer(),
              Expanded(child: _aspectRatioEmpty()),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildNineImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: width,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 0)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 1)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 2)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 3)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 4)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 5)),
            ],
          ),
          _spacer(),
          Row(
            children: <Widget>[
              Expanded(child: _aspectRatioImage(context, index: 6)),
              _spacer(),
              Expanded(child: _aspectRatioImage(context, index: 7)),
              _spacer(),
              Expanded(
                child: _plusMorePictures(
                  context,
                  valueCount: images.length - 9,
                  child: _aspectRatioImage(
                    context,
                    index: 8,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _plusMorePictures(
    BuildContext context, {
    int valueCount,
    Widget child,
  }) {
    if (valueCount <= 0) {
      return child;
    } else {
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
          InkWell(
            onTap: () {
              _openGalleryWatcher(context, 9);
            },
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.white30,
                child: Center(
                  child: Text(
                    "+$valueCount",
                    style: null == moreStyle
                        ? TextStyle(fontSize: 32, fontFamily: "Poppins-Regular")
                        : moreStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      );
    }
  }

  SizedBox _spacer() {
    return SizedBox.fromSize(
      size: Size(2, 2),
    );
  }

  Widget _aspectRatioImage(
    BuildContext context, {
    int index,
    double aspectRatio = 1,
  }) {
    return InkWell(
        child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Hero(
              tag: images[index] + index.toString(),
              child: ImageWithLoader(
                url: images[index],
                backgroundColor: backgroundColor,
                valueColor: valueColor,
                strokeWidth: strokeWidth,
              ),
            )),
        onTap: () {
          _openGalleryWatcher(context, index);
        });
  }

  _openGalleryWatcher(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryPhotoViewWrapper(
          thumbGalleryItems: images,
          backgroundDecoration: const BoxDecoration(
            color: Colors.black,
          ),
          initialIndex: index,
          scrollDirection: Axis.horizontal,
          onLongPressListener: onLongPressListener,
        ),
      ),
    );
  }

  Widget _aspectRatioEmpty({
    double aspectRatio = 1,
  }) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: SizedBox(),
    );
  }
}

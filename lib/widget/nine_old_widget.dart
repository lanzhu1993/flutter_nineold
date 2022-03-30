import 'package:flutter/material.dart';
import 'package:nineold/loader/image_with_loader.dart';
import 'package:nineold/watcher/gallery_watcher.dart';
import 'package:uuid/uuid.dart';

class NineOldWidget extends StatelessWidget {
  final List<String> images;
  final TextStyle moreStyle;

  final Color backgroundColor;
  final double strokeWidth;
  final Color valueColor;
  final Widget errorWidget;

  final OnLongPressCallback onLongPressListener;

  final List<String> tagItems = [];

  NineOldWidget(
      {required this.images,
      required this.moreStyle,
      this.backgroundColor = Colors.white,
      this.strokeWidth = 3,
      this.valueColor = Colors.tealAccent,
      required this.onLongPressListener,
      required this.errorWidget});

  @override
  Widget build(BuildContext context) {
    images.forEach((element) {
      tagItems.add(Uuid().v1());
    });
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

  /// Build a picture and adapt it to the on-screen display
  Widget _buildSingleImage(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.width,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: _aspectRatioImage(context, index: 0, aspectRatio: 1),
    );
  }

  /// Build two picture and adapt it to the on-screen display
  Widget _buildTwoImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width / 2,
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

  /// Build three picture and adapt it to the on-screen display
  Widget _buildThreeImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: (MediaQuery.of(context).size.width * 2 / 3) + 1,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: (MediaQuery.of(context).size.width * 2 ~/ 3),
              child: _aspectRatioImage(context, index: 0)),
          _spacer(),
          Expanded(
            flex: MediaQuery.of(context).size.width ~/ 3,
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

  /// Build four picture and adapt it to the on-screen display
  Widget _buildFourImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width,
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

  /// Build five picture and adapt it to the on-screen display
  Widget _buildFiveImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width * 5 / 6,
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

  /// Build six picture and adapt it to the on-screen display
  Widget _buildSixImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width * 2 / 3,
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

  /// Build seven picture and adapt it to the on-screen display
  Widget _buildSevenImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width,
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

  /// Build eight picture and adapt it to the on-screen display
  Widget _buildEightImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width,
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

  /// Build nine picture and adapt it to the on-screen display
  Widget _buildNineImages(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.width,
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

  /// Build more than nine picture and adapt it to the on-screen display
  Widget _plusMorePictures(
    BuildContext context, {
    required int valueCount,
    required Widget child,
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

  /// Build a picture ration Image to display
  Widget _aspectRatioImage(
    BuildContext context, {
    required int index,
    double aspectRatio = 1,
  }) {
    return InkWell(
        child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Hero(
              tag: images[index] + tagItems[index],
              child: ImageWithLoader(
                url: images[index],
                backgroundColor: backgroundColor,
                valueColor: valueColor,
                strokeWidth: strokeWidth,
                errorWidget: errorWidget,
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
          tagItems: tagItems,
          backgroundDecoration: const BoxDecoration(
            color: Colors.black,
          ),
          initialIndex: index,
          scrollDirection: Axis.horizontal,
          onLongPressListener: onLongPressListener,
          originGalleryItems: images,
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

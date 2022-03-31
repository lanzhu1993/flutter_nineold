import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

typedef OnLongPressCallback = void Function(int position);

class GalleryPhotoViewWrapper extends StatefulWidget {
  GalleryPhotoViewWrapper({
    required this.backgroundDecoration,
    required this.initialIndex,
    required this.thumbGalleryItems,
    required this.tagItems,
    required this.originGalleryItems,
    this.scrollDirection = Axis.horizontal,
    required this.onLongPressListener,
  }) : pageController = PageController(initialPage: initialIndex);

  final Decoration backgroundDecoration;
  final int initialIndex;
  final PageController pageController;
  final List<String> thumbGalleryItems;
  final List<String> originGalleryItems;
  final List<String> tagItems;
  final Axis scrollDirection;

  final OnLongPressCallback onLongPressListener;

  @override
  State<StatefulWidget> createState() {
    return _GalleryPhotoViewWrapperState();
  }
}

class _GalleryPhotoViewWrapperState extends State<GalleryPhotoViewWrapper> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery
              .of(context)
              .size
              .height,
        ),
        child: InkWell(
          onLongPress: () {
            widget.onLongPressListener(currentIndex);
          },
          child: Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: _buildItem,
                itemCount: widget.thumbGalleryItems.length,
                backgroundDecoration: BoxDecoration(
                  color: Colors.black,
                ),
                pageController: widget.pageController,
                onPageChanged: onPageChanged,
                scrollDirection: widget.scrollDirection,
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                  child: Text(
                    "${currentIndex + 1}" +
                        "/" +
                        "${widget.thumbGalleryItems.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      decoration: null,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 0,
                child: IconButton(
                  iconSize: 20,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    String item = "";
    if (widget.originGalleryItems.length == 0) {
      item = widget.thumbGalleryItems[index];
    } else {
      item = widget.originGalleryItems[index];
    }
    var tag = item + widget.tagItems[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: CachedNetworkImageProvider(item),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 1.1,
      heroAttributes: PhotoViewHeroAttributes(tag: tag),
    );
  }
}

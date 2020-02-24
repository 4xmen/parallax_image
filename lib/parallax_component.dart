import 'package:flutter/material.dart';

class ParallaxImage extends StatefulWidget {
  final ImageProvider image;
  final Widget child;
  final double height;

  ParallaxImage({Key key, this.image, this.height, this.child}) : super(key: key);

  @override
  _ParallaxImageState createState() => _ParallaxImageState();
}

class _ParallaxImageState extends State<ParallaxImage> {
  ScrollController _scrollController;
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
      // debugPrint(_scrollPosition.toString());
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: <Widget>[
          Container(
            height: 200 - _scrollPosition,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: widget.image,
                fit: BoxFit.fitWidth,
                alignment: AlignmentDirectional.topStart,
              ),
            ),
          ),
          Container(
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    super.key,
    required this.imgList,
  });

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: FlutterCarousel(
        options: CarouselOptions(
          viewportFraction: 1,
          enableInfiniteScroll: false,
          disableCenter: true,
          showIndicator: true,
          slideIndicator: CircularSlideIndicator(),
        ),
        items: imgList
            .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.network(
                    e,
                    fit: BoxFit.cover,
                    frameBuilder: (BuildContext context, Widget child,
                            int? frame, bool wasSynchronouslyLoaded) =>
                        wasSynchronouslyLoaded
                            ? child
                            : AnimatedOpacity(
                                child: child,
                                opacity: frame == null ? 0 : 1,
                                duration: const Duration(seconds: 2),
                                curve: Curves.easeOut,
                              ),
                    loadingBuilder: (context, child, progress) =>
                        progress == null
                            ? child
                            : LinearProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.grey.shade200),
                              ),
                    errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) =>
                        Text('Failed to load image'),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

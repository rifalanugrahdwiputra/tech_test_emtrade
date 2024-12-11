import 'package:emtrade_tech_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardImageMoleculs extends StatelessWidget {
  final String imageUrl;
  final bool isVideo;

  const CardImageMoleculs({
    super.key,
    required this.imageUrl,
    this.isVideo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88.0,
      height: 88.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 88.0,
              width: 88.0,
            ),
          ),
          if (isVideo)
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF515151).withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              ),
            ),
          if (isVideo)
            Center(
              child: Container(
                width: 44.0,
                height: 44.0,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(Assets.icons.icPlayVideo, height: 44.0, width: 44.0,),
              ),
            ),
        ],
      ),
    );
  }
}

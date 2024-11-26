import 'package:flutter/material.dart';

class ImageHeaderMoleculs extends StatelessWidget {
  final String image;
  const ImageHeaderMoleculs({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 328.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

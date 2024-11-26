import 'package:flutter/material.dart';

class CardImageCartMoleculs extends StatelessWidget {
  final String image;
  const CardImageCartMoleculs({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

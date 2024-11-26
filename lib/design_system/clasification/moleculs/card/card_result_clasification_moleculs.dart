import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class CardResultClasificationMoleculs extends StatelessWidget {
  final String image;
  const CardResultClasificationMoleculs({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return 
    
    Container(
      height: 512.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(padding: const EdgeInsets.all(40.0), child: Image.asset(image),),
    );
  }
}

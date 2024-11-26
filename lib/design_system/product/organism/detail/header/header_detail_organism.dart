import 'package:template_mobile_apps/design_system/product/moleculs/detail/header/image_header_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/detail/iconbutton/icon_close_moleculs.dart';
import 'package:flutter/material.dart';

class HeaderDetailOrganism extends StatelessWidget {
  final VoidCallback callbackClose;
  final String image;
  const HeaderDetailOrganism({
    super.key,
    required this.callbackClose,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: callbackClose,
          child: const Row(
            children: [
              IconCloseMoleculs(),
            ],
          ),
        ),
        const SizedBox(height: 24.0),
        ImageHeaderMoleculs(image: image),
      ],
    );
  }
}

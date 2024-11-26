import 'package:template_mobile_apps/design_system/clasification/moleculs/button/button_select_camera_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/button/button_select_close_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/button/button_select_galery_moleculs.dart';
import 'package:flutter/material.dart';

class ModalBottomSelectImageOrganism extends StatelessWidget {
  final VoidCallback galery;
  final VoidCallback camera;
  final VoidCallback close;
  const ModalBottomSelectImageOrganism({
    super.key,
    required this.galery,
    required this.camera,
    required this.close,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonSelectGaleryMoleculs(onTap: galery),
        ButtonSelectCameraMoleculs(onTap: camera),
        const SizedBox(height: 10.0),
        ButtonSelectCloseMoleculs(onTap: close)
      ],
    );
  }
}

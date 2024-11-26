import 'package:template_mobile_apps/common/injection/injection.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/body/body_onboarding_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/modal_bottom_select_image_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/presentation/clasification/bloc/clasification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class OnboardingClasificationScreen extends StatelessWidget {
  const OnboardingClasificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ClasificationCubit>()..getContent(),
      child: const OnboardingClasificationPage(),
    );
  }
}

class OnboardingClasificationPage extends StatefulWidget {
  const OnboardingClasificationPage({super.key});

  @override
  State<OnboardingClasificationPage> createState() =>
      _OnboardingClasificationPageState();
}

class _OnboardingClasificationPageState
    extends State<OnboardingClasificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: BlocBuilder<ClasificationCubit, ClasificationState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: BodyOnboardingClasificationOrganism(
                    callback: () {
                      showSelectImagePicker(
                        context,
                        context.read<ClasificationCubit>(),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void showSelectImagePicker(
    BuildContext context,
    ClasificationCubit clasificationCubit,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
              left: 10.0,
              bottom: 30.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ModalBottomSelectImageOrganism(
                  close: () {
                    Navigator.pop(ctx);
                  },
                  galery: () {
                    Navigator.pop(ctx);
                    clasificationCubit.selectImage(
                      context,
                      ImageSource.gallery,
                    );
                  },
                  camera: () {
                    Navigator.pop(ctx);
                    clasificationCubit.selectImage(
                      context,
                      ImageSource.camera,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

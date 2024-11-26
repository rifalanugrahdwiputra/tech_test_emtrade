// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:template_mobile_apps/design_system/commons/flushbar/error_handle_flushbar.dart';
import 'package:template_mobile_apps/design_system/commons/flushbar/success_handle_flushbar.dart';
import 'package:template_mobile_apps/domain/classification/usecases/classification_image_params.dart';
import 'package:template_mobile_apps/domain/classification/usecases/classification_image_usecase.dart';
import 'package:template_mobile_apps/presentation/clasification/page/result/result_clasification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'clasification_state.dart';

@injectable
class ClasificationCubit extends Cubit<ClasificationState> {
  final ClassificationImageUsecase _classificationImageUsecase;
  ClasificationCubit(this._classificationImageUsecase)
      : super(ClasificationInitial());

  void getContent() async {
    emit(ClasificationLoaded(
      null,
    ));
  }

  Future<void> selectImage(BuildContext context, ImageSource source) async {
    final currentState = state;
    if (currentState is ClasificationLoaded) {
      if (source == ImageSource.gallery) {
        await _checkGallery(context);
      } else {
        final pickedFile =
            await ImagePicker().pickImage(source: source, imageQuality: 30);
        if (pickedFile != null) {
          File imageFile = File(pickedFile.path);
          int fileSizeInBytes = await imageFile.length();
          double fileSizeInMb = fileSizeInBytes / (1024 * 1024);

          if (fileSizeInMb > 2) {
            errorHandlerFlushbar(
              context: context,
              title: "Ukuran size foto terlalu besar",
              message: "Pastikan ukuran image anda tidak melebihi 2mb",
              duration: 2,
            );
            emit(
              currentState.copyWith(
                clasificationCertificate: null,
              ),
            );
          } else {
            final result = await _classificationImageUsecase
                .call(ClassificationImageParams(
              File(pickedFile.path),
            ));
            result.when(success: (result) {
              emit(
                currentState.copyWith(
                  clasificationCertificate: File(pickedFile.path),
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => ResultClasificationScreen(
                    image: pickedFile.path,
                    classified: result.results.first.predictedLabel ?? "-",
                    percentage:
                        result.results.first.predictedPercentage ?? "-%",
                    detailedResults: result.results.first.detailedResults ?? [],
                  ),
                ),
              );
            }, error: (e) {
              emit(ClasificationError(e.message));
            });
          }
        } else {
          emit(
            currentState.copyWith(
              clasificationCertificate: null,
            ),
          );
        }
      }
    }
  }

  Future<void> _checkGallery(BuildContext context) async {
    PermissionStatus permission;
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      final androidVersion = int.parse(androidInfo.version.release);

      if (androidVersion < 13) {
        permission = await Permission.storage.request();
      } else {
        permission = await Permission.photos.request();
      }

      if (permission.isDenied) {
        permission = androidVersion < 13
            ? await Permission.storage.request()
            : await Permission.photos.request();
      }
    } else if (Platform.isIOS) {
      permission = await Permission.storage.request();
    } else {
      return;
    }

    if (permission.isPermanentlyDenied ||
        permission.isProvisional ||
        permission.isRestricted) {
      Navigator.pop(context);
      openAppSettings();
    } else {
      final currentState = state;
      if (currentState is ClasificationLoaded) {
        final pickedFile = await ImagePicker()
            .pickImage(source: ImageSource.gallery, imageQuality: 30);
        if (pickedFile != null) {
          File imageFile = File(pickedFile.path);
          int fileSizeInBytes = await imageFile.length();
          double fileSizeInMb = fileSizeInBytes / (1024 * 1024);

          if (fileSizeInMb > 2) {
            errorHandlerFlushbar(
              context: context,
              title: "Ukuran size foto terlalu besar",
              message: "Pastikan ukuran image anda tidak melebihi 2mb",
              duration: 2,
            );
            emit(
              currentState.copyWith(
                clasificationCertificate: null,
              ),
            );
          } else {
            final result = await _classificationImageUsecase
                .call(ClassificationImageParams(
              File(pickedFile.path),
            ));
            result.when(success: (result) {
              emit(
                currentState.copyWith(
                  clasificationCertificate: File(pickedFile.path),
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => ResultClasificationScreen(
                    image: pickedFile.path,
                    classified: result.results.first.predictedLabel ?? "-",
                    percentage:
                        result.results.first.predictedPercentage ?? "-%",
                    detailedResults: result.results.first.detailedResults ?? [],
                  ),
                ),
              );
            }, error: (e) {
              emit(ClasificationError(e.message));
            });
          }
        } else {
          emit(
            currentState.copyWith(
              clasificationCertificate: null,
            ),
          );
        }
      }
    }
  }

  File? getCertification() {
    final currentState = state;
    if (currentState is ClasificationLoaded) {
      return currentState.clasificationCertificate;
    }
    return null;
  }

  void storeCertificate(BuildContext context) async {
    final currentState = state;
    if (currentState is ClasificationLoaded) {
      successHandlerFlushbar(
        context: context,
        title: "Upload images berhasil",
        message: "Berhasil mengupload images clasification",
        duration: 2,
      );
    }
  }
}

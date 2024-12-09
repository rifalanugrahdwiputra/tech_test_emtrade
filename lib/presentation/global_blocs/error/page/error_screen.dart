import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:emtrade_tech_test/design_system/error/moleculs/content_button_moleculs.dart';
import 'package:emtrade_tech_test/design_system/error/moleculs/content_error_moleculs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:emtrade_tech_test/gen/assets.gen.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/bloc/error_cubit.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/error_enum.dart';

class GlobalErrorScreen extends StatelessWidget {
  final ErrorTypeEnum errorType;
  final VoidCallback? callback;
  const GlobalErrorScreen(
      {super.key, required this.errorType, required this.callback});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<GlobalErrorCubit>()
        ..showErrorScreen(errorType: errorType),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: ContentErrorMoleculs(
                  errorImage: errorImage(errorType),
                  errorMessage: errorTitle(errorType),
                  errorDescription: errorDesc(errorType),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ContentButtonMoleculs(
                    text: "Kembali",
                    callback: callback ??
                        () {
                          context.pop();
                          context.read<GlobalErrorCubit>().resetState();
                        },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String errorImage(ErrorTypeEnum type) {
    switch (type) {
      case ErrorTypeEnum.noInternet:
        return Assets.icons.icErrorNoConnection.path;
      case ErrorTypeEnum.pageNotFound:
        return Assets.icons.icErrorCode404.path;
      case ErrorTypeEnum.forbidden:
        return Assets.icons.icErrorCode400.path;
      case ErrorTypeEnum.serverError:
        return Assets.icons.icErrorCode500.path;
      case ErrorTypeEnum.somethingWrong:
        return Assets.icons.icErrorCode400.path;
    }
  }

  String errorTitle(ErrorTypeEnum type) {
    switch (type) {
      case ErrorTypeEnum.noInternet:
        return "Tidak Ada Koneksi";
      case ErrorTypeEnum.pageNotFound:
        return "Halaman Tidak Dapat Diakses";
      case ErrorTypeEnum.forbidden:
        return "Permintaan Buruk";
      case ErrorTypeEnum.serverError:
        return "Terjadi Kesalahan Server";
      case ErrorTypeEnum.somethingWrong:
        return "Permintaan Buruk";
    }
  }

  String errorDesc(ErrorTypeEnum type) {
    switch (type) {
      case ErrorTypeEnum.noInternet:
        return "Coba cek kembali koneksi mu dan coba lagi.";
      case ErrorTypeEnum.pageNotFound:
        return "Mohon maaf, halaman yang kamu tuju\nterbatas. Kamu dapat mengaksesnya lagi\nnanti.";
      case ErrorTypeEnum.forbidden:
        return "Mohon maaf atas ketidaknyamanannya,\nhalaman yang kamu tuju sudah dihapus.";
      case ErrorTypeEnum.serverError:
        return "Kesalahan server telah terjadi, silahkan coba\nkembali";
      case ErrorTypeEnum.somethingWrong:
        return "Mohon maaf atas ketidaknyamanannya,\nhalaman yang kamu tuju sudah dihapus.";
    }
  }
}

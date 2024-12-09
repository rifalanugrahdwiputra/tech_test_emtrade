import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/error_enum.dart';

part 'error_state.dart';

@lazySingleton
class GlobalErrorCubit extends Cubit<GlobalErrorState> {
  GlobalErrorCubit() : super(ErrorIdle());

  void showErrorScreen({
    required ErrorTypeEnum errorType,
    void Function()? confirmCallback,
  }) {
    emit(ErrorScreenState(
        errorType: errorType, confirmCallback: confirmCallback));
  }

  void resetState() {
    emit(ErrorIdle());
  }
}

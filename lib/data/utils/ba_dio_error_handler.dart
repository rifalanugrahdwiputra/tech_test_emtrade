import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:emtrade_tech_test/core/common/domain/ba_result_entity.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/bloc/error_stream.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/error_enum.dart';

import '../../core/common/data/remote/response/ba_base_error_response.dart';

@singleton
class BADioErrHandler {
  final List<String> serverErrorWhiteList = [
    // BAApis.authLoginPhone,
    // BAApis.authVerificationOtp
  ];

  BADioErrHandler();

  ResultError<T>? handleDioError<T>(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        try {
          final BABaseErrorResponse errorBody =
              BABaseErrorResponse.fromJson(error.response!.data);
          return ResultEntity.error(
              message: errorBody.message, details: errorBody.details);
        } catch (e) {
          return ResultEntity.error(
              message: "ERR_CONNECTION_TIMEOUT", details: []);
        }
      case DioExceptionType.badCertificate:
        return ResultEntity.error(message: "BAD_CERTIFICATE", details: []);
      case DioExceptionType.badResponse:
        try {
          if (error.response != null) {
            if (error.response!.statusCode! >= 500) {
              if (!serverErrorWhiteList.contains(error.requestOptions.path)) {
                Future.delayed(const Duration(milliseconds: 200), () {
                  globalErrorStreamController.add(ErrorTypeEnum.serverError);
                });
              }
              final BABaseErrorResponse errorBody =
                  BABaseErrorResponse.fromJson(error.response!.data);
              return ResultEntity.error(
                  message: errorBody.message, details: errorBody.details);
            } else if (error.response!.statusCode == 404) {
              if (error.response!.data != null) {
                final BABaseErrorResponse errorBody =
                    BABaseErrorResponse.fromJson(error.response!.data);
                Future.delayed(const Duration(milliseconds: 200), () {
                  globalErrorStreamController.add(ErrorTypeEnum.pageNotFound);
                });

                return ResultEntity.error(
                    message: errorBody.message, details: errorBody.details);
              } else {
                Future.delayed(const Duration(milliseconds: 200), () {
                  globalErrorStreamController.add(ErrorTypeEnum.pageNotFound);
                });
                return ResultEntity.error(
                    message: "ERR_NOT_FOUND", details: []);
              }
            } else if (error.response!.statusCode == 403) {
              final BABaseErrorResponse errorBody =
                  BABaseErrorResponse.fromJson(error.response!.data);
              Future.delayed(const Duration(milliseconds: 200), () {
                globalErrorStreamController.add(ErrorTypeEnum.forbidden);
              });
              return ResultEntity.error(
                  message: errorBody.message, details: errorBody.details);
            } else if (error.response!.statusCode == 400) {
              final BABaseErrorResponse errorBody =
                  BABaseErrorResponse.fromJson(error.response!.data);
              Future.delayed(const Duration(milliseconds: 200), () {
                globalErrorStreamController.add(ErrorTypeEnum.somethingWrong);
              });
              return ResultEntity.error(
                  message: errorBody.message, details: errorBody.details);
            } else {
              if (error.response!.data != null) {
                final BABaseErrorResponse errorBody =
                    BABaseErrorResponse.fromJson(error.response!.data);
                return ResultEntity.error(
                    message: errorBody.message, details: errorBody.details);
              }
            }
          } else {
            Future.delayed(const Duration(milliseconds: 200), () {
              globalErrorStreamController.add(ErrorTypeEnum.somethingWrong);
            });

            return ResultEntity.error(
                message: "ERR_UNKNOWN_REMOTE_CALL_EXCEPTION", details: []);
          }
        } catch (e) {
          return ResultEntity.error(
              message: "ERR_UNKNOWN_REMOTE_CALL_EXCEPTION", details: []);
        }
      case DioExceptionType.cancel:
        Future.delayed(const Duration(milliseconds: 200), () {
          globalErrorStreamController.add(ErrorTypeEnum.somethingWrong);
        });
        return ResultEntity.error(message: "ERR_REQUEST_CANCELED", details: []);
      case DioExceptionType.unknown:
        Future.delayed(const Duration(milliseconds: 200), () {
          globalErrorStreamController.add(ErrorTypeEnum.serverError);
        });
        return ResultEntity.error(message: "UNKNOWN_ERROR", details: []);
      default:
        return ResultEntity.error(message: "UNEXPECTED_ERROR", details: []);
    }
    return null;
  }
}

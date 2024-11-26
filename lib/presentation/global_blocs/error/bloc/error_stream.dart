import 'dart:async';

import 'package:template_mobile_apps/presentation/global_blocs/error/error_enum.dart';

StreamController<ErrorTypeEnum> globalErrorStreamController =
    StreamController<ErrorTypeEnum>.broadcast();

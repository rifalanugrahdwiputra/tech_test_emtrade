import 'dart:async';

import 'package:emtrade_tech_test/presentation/global_blocs/error/error_enum.dart';

StreamController<ErrorTypeEnum> globalErrorStreamController =
    StreamController<ErrorTypeEnum>.broadcast();

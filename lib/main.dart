import 'package:emtrade_tech_test/presentation/main/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:emtrade_tech_test/common/env/env.dart';
import 'package:emtrade_tech_test/common/injection/injection.dart';
import 'package:emtrade_tech_test/globals.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/bloc/error_cubit.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/bloc/error_stream.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/error_enum.dart';
import 'package:emtrade_tech_test/presentation/global_blocs/error/page/error_screen.dart';
import 'package:emtrade_tech_test/presentation/navigation/ba_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await BAEnvironment().initEnv();
  await BAEnvironment().getCurrentEnv();

  configureInjection();

  await Hive.initFlutter();

  await Hive.openBox('FAbox');

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  _MyAppState();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    globalErrorStreamController.stream.listen((event) {
      globalErrorEventMapper(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: initPlatformState(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // if (snapshot.data!) {
            //   return const JailbreakWidget();
            // } else {
            return MultiBlocProvider(
              providers: [
                BlocProvider<MainCubit>(create: (context) {
                  return getIt<MainCubit>();
                }),
                BlocProvider<GlobalErrorCubit>(create: (context) {
                  return getIt<GlobalErrorCubit>();
                }),
              ],
              child: MaterialApp.router(
                builder: (context, child) {
                  return BlocListener<GlobalErrorCubit, GlobalErrorState>(
                    listenWhen: ((prev, current) => prev is ErrorIdle),
                    listener: (ctx, state) {
                      globalErrorListener(state);
                    },
                    child: child!,
                  );
                },
                debugShowCheckedModeBanner: false,
                routerDelegate: paGlobalRouter.routerDelegate,
                routeInformationParser: paGlobalRouter.routeInformationParser,
                routeInformationProvider:
                    paGlobalRouter.routeInformationProvider,
                title: 'Emtrade',
              ),
            );
            // }
          }
          return const SizedBox.shrink();
        });
  }

  void globalErrorListener(GlobalErrorState state) {
    final context = AppGlobals.navigatorKey.currentContext!;
    if (state is ErrorScreenState) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        isDismissible: false,
        backgroundColor: Colors.transparent,
        builder: (_) {
          return GlobalErrorScreen(
            errorType: state.errorType,
            callback: state.confirmCallback,
          );
        },
      ).whenComplete(() => context.read<GlobalErrorCubit>().resetState());
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  void globalErrorEventMapper(ErrorTypeEnum event) {
    final context = AppGlobals.navigatorKey.currentContext!;

    switch (event) {
      case ErrorTypeEnum.noInternet:
        context
            .read<GlobalErrorCubit>()
            .showErrorScreen(errorType: event, confirmCallback: () async {});
      case ErrorTypeEnum.pageNotFound:
      case ErrorTypeEnum.somethingWrong:
      case ErrorTypeEnum.serverError:
      case ErrorTypeEnum.forbidden:
        context.read<GlobalErrorCubit>().showErrorScreen(
            errorType: event,
            confirmCallback: () {
              Navigator.of(context).pop();
            });
    }
  }

  Future<bool> initPlatformState() async {
    bool jailBroken = true;

    try {
      jailBroken = await FlutterJailbreakDetection.jailbroken;
    } on PlatformException {
      jailBroken = true;
    }

    return jailBroken;
  }
}

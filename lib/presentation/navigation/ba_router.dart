import 'package:emtrade_tech_test/presentation/main/page/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:emtrade_tech_test/globals.dart';
import 'package:emtrade_tech_test/presentation/navigation/ba_routes.dart';

final GoRouter paGlobalRouter = GoRouter(
  navigatorKey: AppGlobals.navigatorKey,
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      name: BARoutes.nrMain,
      builder: (context, state) => const MainScreen(),
    ),
    // GoRoute(
    //   path: '/auth',
    //   name: BARoutes.nrAuth,
    //   builder: (context, state) => const AuthScreen(),
    // ),
    // GoRoute(
    //   path: '/auth-register',
    //   name: BARoutes.nrAuthRegister,
    //   builder: (context, state) => const AuthRegisterScreen(),
    // ),
    // GoRoute(
    //   path: '/auth-login',
    //   name: BARoutes.nrAuthLogin,
    //   builder: (context, state) => const AuthLoginScreen(),
    // ),
    // GoRoute(
    //   path: '/main',
    //   name: BARoutes.nrMain,
    //   builder: (context, state) => const MainScreen(),
    // ),
    // GoRoute(
    //   path: '/product-detail',
    //   name: BARoutes.nrProductDetail,
    //   builder: (context, state) {
    //       final id = state.uri.queryParameters['id'] ?? '';
    //       return ProductDetailScreen(
    //         id: id,
    //       );
    //     }),
    // GoRoute(
    //   path: '/onboarding-clasification',
    //   name: BARoutes.nrOnboardingClasification,
    //   builder: (context, state) => const OnboardingClasificationScreen(),
    // ),
    // GoRoute(
    //     path: '/result-clasification-detail',
    //     name: BARoutes.nrResultClasificationDetail,
    //     builder: (context, state) {
    //       final category = state.uri.queryParameters['category'] ?? '';
    //       return ResultDetailClasificationScreen(
    //         category: category,
    //       );
    //     }),
    // GoRoute(
    //     path: '/recomendation-product-clasification',
    //     name: BARoutes.nrRecomendationProductClasification,
    //     builder: (context, state) {
    //       final category = state.uri.queryParameters['category'] ?? '';
    //       return RecomendationScreen(
    //         category: category,
    //       );
    //     }),
    // GoRoute(
    //   path: '/cart-payment',
    //   name: BARoutes.nrCartPayment,
    //   builder: (context, state) => const PaymentScreen(),
    // ),
    // GoRoute(
    //   path: '/cart-payment-success',
    //   name: BARoutes.nrCartPaymentSuccess,
    //   builder: (context, state) => const SuccessPaymentScreen(),
    // ),
    // GoRoute(
    //   path: '/cart-payment-detail',
    //   name: BARoutes.nrCartPaymentDetail,
    //   builder: (context, state) => const PaymentDetailScreen(),
    // ),
    // GoRoute(
    //   path: '/edited-profile',
    //   name: BARoutes.nrEditedProfile,
    //   builder: (context, state) => const EditedProfileScreen(),
    // ),
    // GoRoute(
    //   path: '/edited-orders',
    //   name: BARoutes.nrOrders,
    //   builder: (context, state) => const OrdersScreen(),
    // ),
    // GoRoute(
    //   path: '/edited-payment',
    //   name: BARoutes.nrEditedPayemnt,
    //   builder: (context, state) => const PaymentEditedScreen(),
    // ),
  ],
);

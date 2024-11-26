import 'package:template_mobile_apps/presentation/auth/page/auth_screen.dart';
import 'package:template_mobile_apps/presentation/auth/page/login/auth_login_screen.dart';
import 'package:template_mobile_apps/presentation/auth/page/register/auth_register_screen.dart';
import 'package:template_mobile_apps/presentation/cart/page/detail/payment_detail_screen.dart';
import 'package:template_mobile_apps/presentation/cart/page/payment/payment_screen.dart';
import 'package:template_mobile_apps/presentation/cart/page/success/success_payment_screen.dart';
import 'package:template_mobile_apps/presentation/clasification/page/onboarding/onboarding_clasification_screen.dart';
import 'package:template_mobile_apps/presentation/clasification/page/recomendation/recomendation_screen.dart';
import 'package:template_mobile_apps/presentation/clasification/page/result/detail/result_detail_clasification_screen.dart';
import 'package:template_mobile_apps/presentation/main/page/main_screen.dart';
import 'package:template_mobile_apps/presentation/onboarding/page/onboarding_screen.dart';
import 'package:template_mobile_apps/presentation/product/page/detail/product_detail_screen.dart';
import 'package:template_mobile_apps/presentation/profile/page/edited/edited_profile_screen.dart';
import 'package:template_mobile_apps/presentation/profile/page/orders/orders_screen.dart';
import 'package:template_mobile_apps/presentation/profile/page/payment/payment_edited_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:template_mobile_apps/globals.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';

final GoRouter paGlobalRouter = GoRouter(
  navigatorKey: AppGlobals.navigatorKey,
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      path: '/onboarding',
      name: FARoutes.nrOnboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/auth',
      name: FARoutes.nrAuth,
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: '/auth-register',
      name: FARoutes.nrAuthRegister,
      builder: (context, state) => const AuthRegisterScreen(),
    ),
    GoRoute(
      path: '/auth-login',
      name: FARoutes.nrAuthLogin,
      builder: (context, state) => const AuthLoginScreen(),
    ),
    GoRoute(
      path: '/main',
      name: FARoutes.nrMain,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/product-detail',
      name: FARoutes.nrProductDetail,
      builder: (context, state) {
          final id = state.uri.queryParameters['id'] ?? '';
          return ProductDetailScreen(
            id: id,
          );
        }),
    GoRoute(
      path: '/onboarding-clasification',
      name: FARoutes.nrOnboardingClasification,
      builder: (context, state) => const OnboardingClasificationScreen(),
    ),
    GoRoute(
        path: '/result-clasification-detail',
        name: FARoutes.nrResultClasificationDetail,
        builder: (context, state) {
          final category = state.uri.queryParameters['category'] ?? '';
          return ResultDetailClasificationScreen(
            category: category,
          );
        }),
    GoRoute(
        path: '/recomendation-product-clasification',
        name: FARoutes.nrRecomendationProductClasification,
        builder: (context, state) {
          final category = state.uri.queryParameters['category'] ?? '';
          return RecomendationScreen(
            category: category,
          );
        }),
    GoRoute(
      path: '/cart-payment',
      name: FARoutes.nrCartPayment,
      builder: (context, state) => const PaymentScreen(),
    ),
    GoRoute(
      path: '/cart-payment-success',
      name: FARoutes.nrCartPaymentSuccess,
      builder: (context, state) => const SuccessPaymentScreen(),
    ),
    GoRoute(
      path: '/cart-payment-detail',
      name: FARoutes.nrCartPaymentDetail,
      builder: (context, state) => const PaymentDetailScreen(),
    ),
    GoRoute(
      path: '/edited-profile',
      name: FARoutes.nrEditedProfile,
      builder: (context, state) => const EditedProfileScreen(),
    ),
    GoRoute(
      path: '/edited-orders',
      name: FARoutes.nrOrders,
      builder: (context, state) => const OrdersScreen(),
    ),
    GoRoute(
      path: '/edited-payment',
      name: FARoutes.nrEditedPayemnt,
      builder: (context, state) => const PaymentEditedScreen(),
    ),
  ],
);

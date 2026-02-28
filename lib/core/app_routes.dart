import 'package:go_router/go_router.dart';
import 'package:salooma_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:salooma_app/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static String onboardingView = "/onboardingView";

  static GoRouter route = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashView()),

      GoRoute(
        path: onboardingView,
        builder: (context, state) => OnboardingView(),
      ),
    ],
  );
}

import 'package:go_router/go_router.dart';
import 'package:salma_maged/features/books/presentation/views/book_details_view.dart';
import 'package:salma_maged/features/books/presentation/views/book_view.dart';
import 'package:salma_maged/features/cv/presentation/views/cv_view.dart';
import 'package:salma_maged/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:salma_maged/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static String onboardingView = "/onboardingView";
  static String cvView = "/cvView";
  static String bookView = "/bookView";
  static String bookDetailsView = "/bookDetailsView";

  static GoRouter route = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashView()),

      GoRoute(
        path: onboardingView,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(path: cvView, builder: (context, state) => CvView()),
      GoRoute(path: bookView, builder: (context, state) => BookView()),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}

import 'package:bookly_app/Features/home/presentation/views/home.dart';
import 'package:bookly_app/Features/search/presintation/views/search.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_veiw.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_detailes.dart';

abstract class app_router {
  static const KHome_view = '/Home';
  static const Home_detailes_view_ = '/Home_detailes_view';
  static const searech_veiw_ = '/searech_veiw';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const splash_page(),
      ),
      GoRoute(
        path: searech_veiw_,
        builder: (context, state) => const searech_veiw(),
      ),
      GoRoute(
        path: KHome_view,
        builder: (context, state) => const Home_view(),
      ),
      GoRoute(
        path: Home_detailes_view_,
        builder: (context, state) => const Book_detailes_view(),
      ),
    ],
  );
}

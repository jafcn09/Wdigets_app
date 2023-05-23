
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';




final appRouter = GoRouter(
   initialLocation:  '/',
  routes: [
   GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder:(context, state) =>  const HomeScreen(),
   ),

   GoRoute(
    path: '/buttons',
    name: ButtonsScreen.name,
    builder:(context, state) => const ButtonsScreen(),
   ),

   GoRoute(
    path: '/cards',
    name: CardsScreen.name,
    builder:(context, state) => const CardsScreen(),
   ),

      GoRoute(
    path: '/progress',
    name: ProgresssScreen.name,
    builder:(context, state) => const ProgresssScreen(),
   ),
     GoRoute(
    path: '/snackbars',
    name: SnackBardScreen.name,
    builder:(context, state) => const SnackBardScreen(),
   ),
    GoRoute(
    path: '/animated',
    name: AnimatedScreen.name,
    builder:(context, state) => const AnimatedScreen(),
   ),
  ],
);

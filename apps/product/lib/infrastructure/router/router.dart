import 'package:go_router/go_router.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/presentation/screens/home_screen.dart';
import 'package:product/features/home/presentation/screens/product_detail_screen.dart';
import 'package:product/features/home/presentation/screens/profile_page.dart';

final productRoutes = [
  GoRoute(
    path: 'detail',
    builder: (context, state) {
      final product = state.extra as ProductToDisplay;
      return ProductDeatilScreen(product: product,);
    },
  )
];


final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      
      routes: productRoutes
  ),
  GoRoute(
        path: '/profile',
        builder: (context, state) {
          return const ProfilePage();
        },
      ),
  
]);
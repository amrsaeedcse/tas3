import 'package:go_router/go_router.dart';
import 'package:task/views/screens/producs_page.dart';
import 'package:task/views/screens/sign_in.dart';
import 'package:task/views/screens/sign_up.dart';
import 'package:task/views/screens/wrapper.dart';

import '../models/products/products_model.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/wrapper",
      name: "wrapper",
      builder: (context, state) {
        return Wrapper();
      },
    ),
    GoRoute(
      path: "/product_page/:tag",
      name: "product_page",
      builder: (context, state) {
        final ProductModel productModel = state.extra as ProductModel;
        final String? tag = state.pathParameters['tag'];
        return ProductPage(productModel: productModel, tag: tag!);
      },
    ),
    GoRoute(
      path: "/",
      name: "sign_in",
      builder: (context, state) {
        return SignIn();
      },
    ),
    GoRoute(
      path: "/sign_up",
      name: "sign_up",
      builder: (context, state) {
        return SignUp();
      },
    ),
  ],
);

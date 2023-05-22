import 'package:flutter/material.dart';
import 'package:teste_app_links/pages/custom_page.dart';
import 'package:go_router/go_router.dart';
import 'package:teste_app_links/pages/custom_page2.dart';
import 'package:teste_app_links/pages/custom_page3.dart';

void main() {
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(      // Padrão
    //   title: 'Flutter Demo',
    //   theme: ThemeData(primarySwatch: Colors.blue),
    //   home: const CustomPage(),
    // );
    return MaterialApp.router(  // Notar que foi utilizado o ".router" aqui
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: goRouterObj,
    );
  }
}

/// Configurador de rotas do aplicativo
final goRouterObj = GoRouter(
  routes: [
    GoRoute(
      path: '/teste_app_links', // Rota inicial
      builder: (_, __) => const CustomPage(), // Redirecionamento da rota inicial
      routes: [ // Demais rotas
        GoRoute(path: 'page2', builder: (_, __) => const CustomPage2()),
        GoRoute(path: 'page3', builder: (_, __) => const CustomPage3()),
      ],
    ),
  ],
);

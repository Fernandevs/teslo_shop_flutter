import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_shop/config/config.dart';

void main() async {
  await Environment.initEnvironment();

  runApp(const ProviderScope(child: TesloShop()));
}

class TesloShop extends ConsumerWidget {
  const TesloShop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
    );
  }
}

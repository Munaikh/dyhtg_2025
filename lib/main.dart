import 'package:bart/bart.dart';
import 'package:dyhtg_2025/env.dart';
import 'package:dyhtg_2025/fake_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  final env = Environment.fromEnv();
  Supabase.initialize(url: env.backendUrl, anonKey: env.supabaseToken);

  runApp(ProviderScope(child: const MainApp()));
}

List<BartMenuRoute> subRoutes() {
  return [
    BartMenuRoute.bottomBar(
      label: "Home",
      icon: Icons.home,
      path: '/home',
      pageBuilder: (context, _, _) => FakePage(color: Colors.red),
    ),
    BartMenuRoute.bottomBar(
      label: "Library",
      icon: Icons.video_library_rounded,
      path: '/library',
      pageBuilder: (context, _, _) => FakePage(color: Colors.blueGrey),
    ),
    BartMenuRoute.bottomBar(
      label: "Profile",
      icon: Icons.person,
      path: '/profile',
      pageBuilder: (context, _, _) => FakePage(color: Colors.yellow),
    ),
    BartMenuRoute.innerRoute(
      // add an inner route, no item will be added in bottom bar
      path: '/subpage',
      pageBuilder: (context, _, _) =>
          FakePage(color: Colors.greenAccent, child: Text("Sub Route page")),
    ),
  ];
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffEB4335)),
      ),
      darkTheme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffEB4335),
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: BartScaffold(
        routesBuilder:
            subRoutes, // add a reference to the subRoutes list you created before
        bottomBar:
            BartBottomBar.adaptive(), // add the bottom bar (see below for other options)
      ),
    );
  }
}

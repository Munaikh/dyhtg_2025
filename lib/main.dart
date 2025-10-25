import 'package:bart/bart.dart';
import 'package:dyhtg_2025/fake_page.dart';
import 'package:dyhtg_2025/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
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
      home: BartScaffold(
        routesBuilder:
            subRoutes, // add a reference to the subRoutes list you created before
        bottomBar: BartBottomBar.adaptive(), // add the bottom bar (see below for other options)
      ),
    );
  }
}

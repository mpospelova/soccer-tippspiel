import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tippspiel_frontend/shared/presentation/screen_navgation_bar.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dashboard"),
        const Spacer(),
        ScreenNavigationBar(
          selectedDashboard: true,
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:tippspiel_frontend/shared/presentation/screen_navgation_bar.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dashboard"),
        Spacer(),
        ScreenNavigationBar(
          selectedCommunities: true,
        )
      ],
    ));
  }
}

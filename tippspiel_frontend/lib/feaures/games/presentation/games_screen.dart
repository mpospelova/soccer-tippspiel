import 'package:flutter/material.dart';
import 'package:tippspiel_frontend/shared/presentation/screen_navgation_bar.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dashboard"),
        Spacer(),
        ScreenNavigationBar(
          selectedGames: true,
        )
      ],
    ));
  }
}

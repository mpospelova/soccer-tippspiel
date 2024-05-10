import 'package:flutter/material.dart';
import 'package:tippspiel_frontend/feaures/communities/presentation/communities_screen.dart';
import 'package:tippspiel_frontend/feaures/dashboard/presentation/dashboard_screen.dart';
import 'package:tippspiel_frontend/feaures/games/presentation/games_screen.dart';

class ScreenNavigationBar extends StatefulWidget {
  final bool selectedDashboard;
  final bool selectedPersonalPage;
  final bool selectedGames;
  final bool selectedCommunities;

  const ScreenNavigationBar(
      {super.key,
      this.selectedDashboard = false,
      this.selectedPersonalPage = false,
      this.selectedGames = false,
      this.selectedCommunities = false});

  @override
  State<ScreenNavigationBar> createState() => _ScreenNavigationBarState();
}

class _ScreenNavigationBarState extends State<ScreenNavigationBar> {
  @override
  Widget build(BuildContext context) {
    Color? defaultColor = Colors.grey[800];
    Color? selectedColor = Colors.purple;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6.0,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.explore_outlined,
              color: widget.selectedDashboard ? selectedColor : defaultColor,
            ),
            onPressed: () => {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const DashboardScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              )
            },
          ),
          IconButton(
            icon: Icon(
              Icons.sports_soccer,
              color: widget.selectedGames ? selectedColor : defaultColor,
            ),
            onPressed: () => {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const GamesScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              )
            },
          ),
          IconButton(
            icon: Icon(
              Icons.people_alt_outlined,
              color: widget.selectedCommunities ? selectedColor : defaultColor,
            ),
            onPressed: () async {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const CommunitiesScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
          ),
          // IconButton(
          //   icon: Icon(
          //     Icons.person_outline,
          //     color: widget.selectedPersonalPage ? selectedColor : defaultColor,
          //   ),
          //   onPressed: () => {
          //     Navigator.push(
          //       context,
          //       PageRouteBuilder(
          //         pageBuilder: (context, animation1, animation2) =>
          //             const GlobalLeaderboardScreen(),
          //         transitionDuration: Duration.zero,
          //         reverseTransitionDuration: Duration.zero,
          //       ),
          //     )
          //   },
          // ),
        ],
      ),
    );
  }
}

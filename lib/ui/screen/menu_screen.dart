import 'package:flutter/material.dart';
import 'package:football_betting_flutter/ui/screen/tab_bar_view/info_tab_page.dart';
import 'package:football_betting_flutter/ui/screen/tab_bar_view/matches_screen/matches_tab_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(text: "Info"),
                Tab(text: "Matches"),
                Tab(text: "Team"),
                Tab(text: "Transfer"),
                Tab(text: "Media"),
              ],
            ),
            Divider(height: 30, color: Colors.grey),
            Expanded(
              child: TabBarView(
                children: [
                  InfoTabPage(),
                  MatchesTabPage(),
                  Icon(Icons.heart_broken),
                  Icon(Icons.heart_broken),
                  Icon(Icons.heart_broken),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
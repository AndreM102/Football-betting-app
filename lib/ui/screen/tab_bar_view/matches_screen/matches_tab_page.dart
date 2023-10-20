import 'package:flutter/material.dart';
import 'package:football_betting_flutter/ui/screen/tab_bar_view/matches_screen/club_name.dart';
import 'package:intl/intl.dart';

class MatchesTabPage extends StatelessWidget {
  const MatchesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 26.0, top: 4.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  isScrollable: true,
                  labelColor: brightness == Brightness.light ? Colors.red : Colors.yellow,
                  unselectedLabelColor: const Color(0xFF808697),
                  indicator: BoxDecoration(
                    color: brightness == Brightness.light ? const Color(0xFFEEEEEE) : const Color(0xFF141C21),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  tabs: const <Widget>[
                    Tab(text: "Results"),
                    Tab(text: "Fixtures"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(child: _tabsResults(context)),
                  SingleChildScrollView(child: _tabsFixtures(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabsResults(BuildContext context) {
    return Column(
      children: [
        PremierLeague(),
        const Padding(padding: EdgeInsets.only(top: 20.0)),
        GameClub(
          isResult: true,
          scoreDown: 0,
          scoreUp: 0,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: true,
          scoreDown: 3,
          scoreUp: 1,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: true,
          scoreDown: 2,
          scoreUp: 0,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        const Padding(padding: EdgeInsets.only(top: 20.0)),
        SerieA(),
        const Padding(padding: EdgeInsets.only(top: 20.0)),
        GameClub(
          isResult: true,
          scoreDown: 2,
          scoreUp: 0,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: true,
          scoreDown: 3,
          scoreUp: 1,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: true,
          scoreDown: 4,
          scoreUp: 7,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: true,
          scoreDown: 5,
          scoreUp: 2,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
      ],
    );
  }

  Widget _tabsFixtures(BuildContext context) {
    return Column(
      children: [
        PremierLeague(),
        const Padding(padding: EdgeInsets.only(top: 20.0)),
        GameClub(
          isResult: false,
          scoreDown: 0,
          scoreUp: 0,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: false,
          scoreDown: 3,
          scoreUp: 1,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: false,
          scoreDown: 2,
          scoreUp: 0,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        const Padding(padding: EdgeInsets.only(top: 20.0)),
        SerieA(),
        const Padding(padding: EdgeInsets.only(top: 20.0)),
        GameClub(
          isResult: false,
          scoreDown: 2,
          scoreUp: 0,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: false,
          scoreDown: 3,
          scoreUp: 1,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: false,
          scoreDown: 4,
          scoreUp: 7,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        GameClub(
          isResult: false,
          scoreDown: 5,
          scoreUp: 2,
          teamDown: "Club name",
          teamUp: "Club name",
          date: DateFormat('dd-MM-yyyy').parse('25-12-2018'),
          isFavorite: false,
        ),
      ],
    );
  }
}

class PremierLeague extends StatelessWidget {
  const PremierLeague({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(8.0)),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset("assets/images/logo2.png"),
        ),
        const Padding(padding: EdgeInsets.only(left: 6.0)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "PREMIER LEAGUE",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Padding(padding: EdgeInsets.only(left: 6.0)),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF808697),
                  size: 12,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/gb-eng 1.png"),
                const Text(
                  " England",
                  style: TextStyle(
                    color: Color(0xFF808697),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class SerieA extends StatelessWidget {
  const SerieA({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(8.0)),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset("assets/images/logo1.png"),
        ),
        const Padding(padding: EdgeInsets.only(left: 6.0)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "SERIE A",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Padding(padding: EdgeInsets.only(left: 6.0)),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF808697),
                  size: 12,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/england 2.png"),
                const Text(
                  " Italy",
                  style: TextStyle(
                    color: Color(0xFF808697),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

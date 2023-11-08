import 'package:flutter/material.dart';
import 'package:football_betting_flutter/state/bet_state.dart';
import 'package:flutter/foundation.dart' as Foundation;
import 'package:football_betting_flutter/ui/screen/menu_screen.dart';
import '../../data/app_data.dart';

class BetList extends StatefulWidget {
  const BetList({super.key});

  @override
  State<StatefulWidget> createState() => BetListState();
}

class BetListState extends State<BetList> {
  get isLight => BetState().isLight;


  // String city = "MANCHESTER CITY" + (Foundation.kReleaseMode ? " release" : " debug");
  String city = "MANCHESTER CITY";
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          SafeArea(
            child: IconButton(
              onPressed: () {
                BetState().isLight.value =
                !BetState().isLight.value;
              },
              icon: brightness == Brightness.light ? const Icon(
                Icons.wb_sunny_outlined,
                color: Colors.white,
              ) : const Icon(
                Icons.brightness_3,
                color: Colors.white,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(height: 100.0),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/images/manchester2.png"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
              city, style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(6.0)),
                const Expanded(
                  // flex: 1,
                  child: MenuPage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

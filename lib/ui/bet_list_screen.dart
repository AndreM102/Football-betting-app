import 'package:flutter/material.dart';
import 'package:football_betting_flutter/state/bet_state.dart';
import 'package:football_betting_flutter/ui/extension/app_extension.dart';
import 'package:football_betting_flutter/ui/tab_bar_view/info_tab_page.dart';
import '../../ui_kit/_ui_kit.dart';
import 'package:football_betting_flutter/ui_kit/app_assets.dart';
import '../data/app_data.dart';

class BetList extends StatefulWidget {
  const BetList({super.key});

  @override
  State<StatefulWidget> createState() => BetListState();
}

class BetListState extends State<BetList> {
  var categories = AppData.categories;

  get isLight => BetState().isLight;

  void onCategoryTap(int selectedIndex) {
    categories.asMap().forEach((index, category) {
      category.isSelected = index == selectedIndex;
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
              icon: const Icon(
                Icons.wb_sunny_outlined,
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
                    Text("MANCHESTER CITY", style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(6.0)),
                const DefaultTabController(
                  length: 5,
                  child: Column(
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
                    TabBarView(
                      children: [
                        Icon(Icons.heart_broken),
                        Icon(Icons.heart_broken),
                        Icon(Icons.heart_broken),
                        Icon(Icons.heart_broken),
                        Icon(Icons.heart_broken),
                      // InfoTabPage(),
                      //   InfoTabPage(),
                      //   InfoTabPage(),
                      //   InfoTabPage(),
                      //   InfoTabPage(),
                    ],
                    ),
                  ],
                  ),
                ),
                // _categories(),
                const Divider(height: 30, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

//   Widget _categories() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         height: 40,
//         child: ListView.separated(
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (_, index) {
//             final category = categories[index];
//             return GestureDetector(
//               onTap: () {
//                 onCategoryTap(index);
//               },
//               child: Container(
//                 width: 100,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                     color: category.isSelected ? LightThemeColor.red : Colors.transparent,
//                   // color: category.isSelected ? ThemeData().indicatorColor : Colors.transparent,
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                 ),
//                 child: Text(
//                   category.type.name.toCapital,
//                   style: TextStyle(
//                     color: category.isSelected ? Colors.white : Colors.grey,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             );
//           },
//           separatorBuilder: (_, __) => Container(
//             width: 15,
//             height: 30,
//           ),
//           itemCount: categories.length,
//         ),
//       ),
//     );
//   }
// }
}

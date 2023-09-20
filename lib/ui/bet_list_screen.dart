import 'package:flutter/material.dart';
import 'package:football_betting_flutter/ui/extension/app_extension.dart';
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

  void onCategoryTap(int selectedIndex) {
    categories.asMap().forEach((index, category) {
      category.isSelected = index == selectedIndex;
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {},
            );
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/manchester2.png"),
          ),
          // const Padding(padding: EdgeInsets.all(3.0)),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MANCHESTER CITY", style: AppTextStyle.h1Style),
              ]
          ),
          const Padding(padding: EdgeInsets.all(6.0)),
          _categories(),
        ],
      ),
      // body: Container(
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/images/bg.png'),
      //       fit: BoxFit.contain,
      //     ),
      //   ),
      //   child: const Align(
      //     alignment: Alignment.topCenter,
      //     child: Center(),
      //   ),
      // ),
    );
  }

  Widget _categories(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final category = categories[index];
              return GestureDetector(
                  onTap: () {
                    onCategoryTap(index);
                  },
              child: Container(
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: category.isSelected ? LightThemeColor.red : Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Text(category.type.name.toCapital),
              ),
              );
            },
            separatorBuilder: (_, __) => Container(
              width: 15,
              height: 30,
            ),
            itemCount: categories.length,
        ),
      ),
    );
  }

}

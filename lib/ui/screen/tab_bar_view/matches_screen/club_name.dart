import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../ui_kit/_ui_kit.dart';

class GameClub extends StatelessWidget {
  GameClub(
      {super.key,
      required this.isResult,
      required this.teamUp,
      required this.teamDown,
      required this.scoreUp,
      required this.scoreDown,
      required this.date,
      required this.isFavorite});

  bool isResult;
  String teamUp;
  String teamDown;
  int? scoreUp;
  int? scoreDown;
  DateTime date;
  bool isFavorite;

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    // isResult = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 105,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: brightness == Brightness.light
              ? Colors.grey[200]
              : const Color(0xFF141C21),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            isResult
                ? _ft()
                : PlayDate(
                    date: date,
                  ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ...[
                    const SizedBox(
                      height: 12,
                    )
                  ],
                  _colunmUp(),
                  ...[
                    const SizedBox(
                      height: 8,
                    )
                  ],
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: isResult ? Colors.green : Colors.grey.withOpacity(0.2),
                  ),
                  ...[
                    const SizedBox(
                      height: 8,
                    )
                  ],
                  _colunmDown(),
                  ...[
                    const SizedBox(
                      height: 12,
                    )
                  ],
                ],
              ),
            ),
            ...[
              const SizedBox(
                width: 12,
              )
            ],
            const Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.favorite_border,
                  // AppIcon.outlinedHeart,
                  color: Colors.grey,
                  size: 16,
                ),
              ),
            ),
            ...[
              const SizedBox(
                width: 12,
              )
            ],
          ],
        ),
      ),
    );
  }

  Widget _colunmUp() {
    return Row(
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFF7F7F7),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: const Icon(
            Icons.camera_outlined,
            size: 18,
            color: Color(0xFF141C21),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 12),),
        Text(teamUp),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              isResult ?
              scoreUp?.toString() ?? '' : " ",
              style:
                  const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget _colunmDown() {
    return Row(
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFF7F7F7),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: const Icon(
            Icons.camera_outlined,
            size: 18,
            color: Color(0xFF141C21),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 12),),
        Text(teamDown),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              isResult ?
              scoreDown?.toString() ?? '' : " ",
              style:
              const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget _ft() {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 32,
      child: const Text(
        'FT',
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 10),
      ),
    );
  }
}

class PlayDate extends StatelessWidget {
  const PlayDate({super.key, required this.date});
  final DateTime date;

  @override
  Widget build(BuildContext context) => Container(
        width: 40,
        height: 48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(DateFormat("dd.MM").format(date), style: TextStyle(color: Color(0xFF808697), fontSize: 10),),
            Text(DateFormat("HH:mm").format(date), style: TextStyle(color: Color(0xFF808697), fontSize: 10),),
          ],
        ),
      );
}

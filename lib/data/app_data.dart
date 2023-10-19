import 'package:football_betting_flutter/data/bet.dart';
import 'package:football_betting_flutter/data/bet_category.dart';
import 'package:flutter/material.dart';



class AppData {
  const AppData._();

  static List<BetCategory> categories = [
    BetCategory(BetType.info, true),
    BetCategory(BetType.matches, false),
    BetCategory(BetType.team, false),
    BetCategory(BetType.transfers, false),
    BetCategory(BetType.media, false),
  ];

  static List<MatchesCategory> cat = [
    MatchesCategory(MatchesType.results, true),
    MatchesCategory(MatchesType.features, false),
  ];
}

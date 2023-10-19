import 'package:football_betting_flutter/data/bet.dart';

class BetCategory {
  final BetType type;
  bool isSelected;

  BetCategory(this.type, this.isSelected);
}

class MatchesCategory {
  final MatchesType type;
  bool isSelected;

  MatchesCategory(this.type, this.isSelected);
}
